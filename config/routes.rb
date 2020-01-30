Rails.application.routes.draw do
  root "ranks#index"
  resources :ranks, only: [:index, :show]
end
