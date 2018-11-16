Rails.application.routes.draw do
  get '/' => 'users#index'
  # post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  # get '/dashboard' => 'product#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product, only: [:index, :show]
  resources :cart_items
  resource :carts, only: [:show]

  root to: 'product#index'

end
