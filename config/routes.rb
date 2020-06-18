Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/new'
  get 'user_companies/index'
  resources :user_companies
  get 'users/index'
  resources :users
  get 'users/create'
  resources :users
  get 'companies/index'
  resources :companies
  get 'companies/show'
  resources :companies
end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
