Rails.application.routes.draw do
  get 'orders/show'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'products/show'
end
