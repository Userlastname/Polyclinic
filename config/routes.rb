Rails.application.routes.draw do
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :doctors, controllers: { registrations: 'doctors/registrations' }
  devise_for :users
  resources :categories, only: [:index, :show]
  resources :appointments, only: [:new, :create ]
  resources :users, only: [:profile] do
    get 'appointments', to: 'users#profile', as: 'appointments', on: :member
  end
  resources :doctors, only: [:index, :show] do
    get 'appointments', on: :member
    patch 'update_recommendation', on: :member
  end
end
