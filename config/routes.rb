Rails.application.routes.draw do

  resources :tags

  get 'posts/gaming', to: 'categories#gaming_index'
  get 'posts/sports', to: 'categories#sports_index'
  get 'posts/nutrition', to: 'categories#nutrition_index'
  get 'posts/fun', to: 'categories#fun_index'



  resources :posts

  devise_for :users

  resources :users

  root 'static_pages#welcome'

  get 'static_pages/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
