Rails.application.routes.draw do
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :doctors, controllers: { registrations: 'doctors/registrations' }
  devise_for :users
  resources :categories, only: [:index, :show]
  resources :appointments
end
