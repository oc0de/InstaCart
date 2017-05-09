Rails.application.routes.draw do

  root 'shoppers#home'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get "/shoppers/welcome/" => "users#welcome", :as => :welcome_user


  resources :users

end
