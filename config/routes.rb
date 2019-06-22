# frozen_string_literal: true

Rails.application.routes.draw do
  #resources :users
  devise_for :users, controllers: {
        registrations: 'users/registrations'
}
devise_scope :user do
  root :to => "devise/sessions#new"
end
  resources :users, only: [:show]
  resources :musics
  resources :posts
  resources :joins, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
