Rails.application.routes.draw do
  root 'gratefuls#index'

  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'

  get 'authorized', to: 'sessions#page_requires_login'
end
