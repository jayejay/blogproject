class CategoriesController < ApplicationController

  def gaming_index
    @posts = Post.where(category_id: 1)
    render 'posts/index'
  end

  def sports_index
    @posts = Post.where(category_id: 2)
    render 'posts/index'
  end

  def nutrition_index
    @posts = Post.where(category_id: 3)
    render 'posts/index'
  end

  def fun_index
    @posts = Post.where(category_id: 4)
    render 'posts/index'
  end

end
