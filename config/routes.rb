Rails.application.routes.draw do

  resources :gossips
  root 'gossips#home'
end
