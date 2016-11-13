Rails.application.routes.draw do
  resources :rooms
  resources :users

  root 'home#index'
end
