Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt/ do
    resources :rooms
    resources :users
  end

  get '/:locale' => 'home#index', locale: /en|pt/
  root 'home#index'
end
