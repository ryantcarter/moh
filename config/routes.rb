Rails.application.routes.draw do
  resources :hikes, param: :slug

  root 'hikes#index'

  get '/new-hike', to: 'hikes#new'
end
