Rails.application.routes.draw do
  get 'welcome_page/home'

  root 'application#hello'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

end
