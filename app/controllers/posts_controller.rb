# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[show index feed]
  load_and_authorize_resource
  skip_authorize_resource only: :feed

  # GET /posts
  # GET /posts.json
  def index
    if params[:q]
      search_term = params[:q]
      @posts = Post.search(search_term).order(published_at: :desc).paginate(page: params[:page], per_page: 6)
    else
      @posts = Post.where(active: true).order(published_at: :desc)\
                   .paginate(page: params[:page], per_page: 6)
    end
    @tags = Tag.all
  end

  def feed
    @posts = Post.where(active: true).order(published_at: :desc).first(5)
    respond_to do |format|
      format.rss { render layout: false }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @rating = @post.rating
  end

  # GET /posts/new
  def new
    @post = Post.new
    @rating = @post.build_rating
    @tags = Tag.all
    render layout: 'user_interface'
  end

  # GET /posts/1/edit
  def edit
    @rating = @post.rating
    @tags = Tag.all
    render layout: 'user_interface'
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :content, :image, :user_id, :published_at, :active, \
                                 { tag_ids: [] }, :category_id, rating_attributes: %i[id post_id gameplay graphics sound
                                                                                      price_performance innovation total])
  end
end

def rating_attributes(rating_attrs)
  self.rating = Client.find_or_initialize_by_id(rating_attrs.delete(:id))
  rating.attributes = rating_attrs
end
