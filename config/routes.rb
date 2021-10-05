Rails.application.routes.draw do
  get 'user/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get    '/login',   to: 'sessions#new'
  get 'products/show'
end
