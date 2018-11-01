Rails.application.routes.draw do

  #resources :registration
  
  #root 'gossips#home'
  get 'gossips/home', to: 'gossips#home'

  #get 'gossips/index', to: 'gossips#index'
#  get 'gossips/new', to: 'gossips#create'
  #get 'gossips/new', to: 'gossips#new'
  get 'registration/login', to: 'registration#login'
  resources :gossips
end
