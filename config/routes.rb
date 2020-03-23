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
    member do
      post 'delete_image_1'
      post 'delete_image_2'
      post 'delete_image_3'
    end
  end
  resources :tags, only: [:show, :new, :create]
end
