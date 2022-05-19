Rails.application.routes.draw do
  devise_for :users
  root to: "eng_items#index"
  resources :eng_items
  resources :items, only: :index
end
