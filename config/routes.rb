Rails.application.routes.draw do
  devise_for :users
  root to: "itemseng#index"
  resources :items, only: :index
  resources :itemseng, only: :index
end
