Rails.application.routes.draw do
  get 'users/index'
  get 'users/register'
  post '/sessions' => 'sessions#create'
  post '/users/create' => 'users#create'
  get '/' => 'product#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product, only: [:index, :show]
  resources :cart_items
  resources :searches
  resource :carts, only: [:show]

  root to: 'product#index'

end
