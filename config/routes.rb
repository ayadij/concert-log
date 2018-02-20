Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/list'

  get 'pages/log'

  devise_for :users
  resources :logs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  
end
