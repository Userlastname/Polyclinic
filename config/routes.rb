Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :doctors, controllers: { registrations: 'doctors/registrations' }
  devise_for :users
  root 'home#index'
end
