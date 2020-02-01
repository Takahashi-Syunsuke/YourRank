Rails.application.routes.draw do
  devise_for :users
  root "ranks#index"
  resources :users, only: [:show]
  resources :ranks, only: [:index, :show, :new, :create]
  resources :tags, only: [:new, :create]
end
