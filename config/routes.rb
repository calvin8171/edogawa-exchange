Rails.application.routes.draw do
  devise_for :users
  root to: "eng_items#index"
  resources :eng_items do
    resources :comments, only: :create
  end
  resources :items, only: :index
end
