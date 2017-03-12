Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  devise_for :users
  resources :users

  root 'static_pages#welcome'

  get 'static_pages/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
