Rails.application.routes.draw do
  get 'categories/show'
  devise_for :users
  root to: 'pages#home'
  resources :category, only: [:show]
  resources :product, only: [:show] do
    resources :rating, only: [:new, :create]
  end
  resources :rating, only: [:destroy]
end
