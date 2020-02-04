Rails.application.routes.draw do
  devise_for :users
  root "ranks#index"
  resources :users, only: [:show]
  resources :ranks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :tags, only: [:show, :new, :create]
end
