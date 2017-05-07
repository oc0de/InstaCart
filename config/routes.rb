Rails.application.routes.draw do
  root :to => redirect('users')
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

end
