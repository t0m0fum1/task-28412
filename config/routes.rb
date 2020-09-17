Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  resources :tasks
  resources :contents
  resources :users, only: :show
end
