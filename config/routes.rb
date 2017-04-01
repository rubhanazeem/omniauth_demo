Rails.application.routes.draw do
  
  root 'home#index'
  devise_for :users
  
  # for omniauth
  get '/auth/:provider/callback', to: 'sessions#create'
end
