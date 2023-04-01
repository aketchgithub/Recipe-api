Rails.application.routes.draw do
  # resources :users
  resources :reviews, only: [:index, :show, :create, :destroy]
  resources :recipes, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :create, :show ]
  

  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  post '/users/logout', to: 'users#logout'
  get '/user/login/check', to: 'users#check_login_status'

  get '/verify', to: 'application#verify_auth'
  
end
