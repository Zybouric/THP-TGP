Rails.application.routes.draw do

  resources :registration
  resources :gossips
  root 'gossips#home'

end
