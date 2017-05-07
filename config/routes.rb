Rails.application.routes.draw do
  root 'application#hello'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

end
