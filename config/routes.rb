Rails.application.routes.draw do
  root "application#index"
  use_doorkeeper
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :stock_keeping_units
  resources :standard_product_units
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end