Rails.application.routes.draw do
  root :to => 'products#index'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources :users
  resources :products
  resources :orders
  resources :transactions
end
