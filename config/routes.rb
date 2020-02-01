Rails.application.routes.draw do
  devise_for :users
  root "ranks#index"
  resources :users, only: [:new, :create]
  resources :ranks, only: [:index, :show, :new, :create]
  resources :tags, only: [:new, :create]
end
