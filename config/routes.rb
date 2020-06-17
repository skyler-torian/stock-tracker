Rails.application.routes.draw do
  get 'users/index'
  resources :users
  get 'companies/index'
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
