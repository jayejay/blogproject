Rails.application.routes.draw do

  resources :tags


  get 'posts/gaming', to: 'categories#gaming_index'
  get 'posts/sports', to: 'categories#sports_index'
  get 'posts/nutrition', to: 'categories#nutrition_index'
  get 'posts/fun', to: 'categories#fun_index'
  get 'posts/unpublished', to: 'categories#unpublished_index'
  get 'home', to: 'static_pages#landing_page'
  get 'impressum', to: 'static_pages#impressum'
  get 'datenschutzerklarung', to: 'static_pages#datenschutz'

  resources :posts

  devise_for :users

  get 'about', to: 'users#index'

  resources :users

  root 'static_pages#landing_page'

  #root 'static_pages#welcome'

  #get 'static_pages/welcome'

  post 'thanks', to: 'static_pages#thanks'

  post '/tinymce_assets', to: 'tinymce_assets#create'

  get 'contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
