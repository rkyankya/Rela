# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  root to: 'products#index'
  resources :products
  resources :sellers
  resources :buyers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
