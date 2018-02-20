Rails.application.routes.draw do
  

  get 'about', to: 'pages#about'
  get 'list', to: 'pages#list'

  devise_for :users
  resources :logs

  root to: 'pages#home'

  
end
