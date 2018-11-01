Rails.application.routes.draw do

  #resources :registration
  
  #root 'gossips#home'
  get 'gossips/home', to: 'gossips#home'
  get 'registration/login', to: 'registration#login'
  resources :gossips
  resources :registration
end
