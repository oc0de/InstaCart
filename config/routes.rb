Rails.application.routes.draw do
  get 'sessions/new'
  root 'shoppers#home'

  get  '/signup',  to: 'shoppers#home'
  post '/signup',  to: 'users#create'

  get '/shoppers/welcome/' => 'users#welcome', :as => :welcome_user

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :funnels, only: [:index]


end
