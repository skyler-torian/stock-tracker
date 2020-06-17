Rails.application.routes.draw do
  get 'user_companies/index'
  resources :user_companies
  get 'users/index'
  resources :users
  get 'companies/index'
  resources :companies
  get 'companies/show'
  resources :companies
end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
