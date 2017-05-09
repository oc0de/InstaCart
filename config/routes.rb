Rails.application.routes.draw do

  root 'shoppers#home'
  # get 'shoppers/home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post '/signup',  to: 'users#welcome'
  resources :users

end
