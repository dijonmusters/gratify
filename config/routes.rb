Rails.application.routes.draw do
  get '/', to: 'gratefuls#new'
  post '/', to: 'gratefuls#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
end
