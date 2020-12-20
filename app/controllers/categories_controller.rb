# frozen_string_literal: true

class CategoriesController < ApplicationController
  load_and_authorize_resource :post
  before_action :authenticate_user!, only: [:unpublished_index]

  def gaming_index
    category = Category.where(name: 'Gaming')
    @posts = Post.where(category_id: category, active: true).order(published_at: :desc)\
                 .paginate(page: params[:page], per_page: 4)
    render 'posts/index'
  end

  def sports_index
    category = Category.where(name: 'Sports')
    @posts = Post.where(category_id: category, active: true).order(published_at: :desc)\
                 .paginate(page: params[:page], per_page: 4)
    render 'posts/index'
  end

  def nutrition_index
    category = Category.where(name: 'Nutrition')
    @posts = Post.where(category_id: category, active: true).order(published_at: :desc)\
                 .paginate(page: params[:page], per_page: 4)
    render 'posts/index'
  end

  def fun_index
    category = Category.where(name: 'Fun')
    @posts = Post.where(category_id: category, active: true).order(published_at: :desc)\
                 .paginate(page: params[:page], per_page: 4)
    render 'posts/index'
  end

  def unpublished_index
    @posts = Post.where(active: false).order(created_at: :desc)\
                 .paginate(page: params[:page], per_page: 4)
    render 'posts/index'
  end
end
