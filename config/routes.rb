Rails.application.routes.draw do
  

  get 'about', to: 'pages#about'
  get 'list', to: 'pages#list'

  devise_for :users, path: '', path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  resources :logs

  root to: 'pages#home'

  
end
