Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/new'
  get 'user_companies/index'
  resources :user_companies
  get 'users/index'
  resources :users
  get 'users/signup'
  resources :users
  get 'companies/index'
  resources :companies
  get 'companies/show'
  resources :companies
end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
