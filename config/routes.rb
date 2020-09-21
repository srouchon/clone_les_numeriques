Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:show]
  resources :products do
    resources :ratings, only: [:new, :create]
  end
  resources :ratings, only: [:destroy]
end
