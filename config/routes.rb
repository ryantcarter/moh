Rails.application.routes.draw do
  resources :hikes, param: :slug

  root 'hikes#index'

  get '/new-hike', to: 'hikes#new'
  get '/contact',  to: 'static_pages#contact'

  get '/sitemap.xml', to: redirect('https://s3.amazonaws.com/charlesharriesblog/moh-sitemap/sitemap.xml')
end
