Rails.application.routes.draw do
  get 'users/new'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product, only: [:index, :show]
  root to: 'product#index'

end
