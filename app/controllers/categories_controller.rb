class CategoriesController < ApplicationController

  def gaming_index
    category = Category.where(name: 'Gaming')
    @posts = Post.where(category_id: category)
    render 'posts/index'
  end

  def sports_index
    category = Category.where(name: 'Sports')
    @posts = Post.where(category_id: category)
    render 'posts/index'
  end

  def nutrition_index
    category = Category.where(name: 'Nutrition')
    @posts = Post.where(category_id: category)
    render 'posts/index'
  end

  def fun_index
    category = Category.where(name: 'Fun')
    @posts = Post.where(category_id: category)
    render 'posts/index'
  end

end
