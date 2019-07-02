# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :users
  root to: 'posts#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :users, only: [:show]
  resources :musics
  resources :posts do
    resources :comments
  end
  resources :joins, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
