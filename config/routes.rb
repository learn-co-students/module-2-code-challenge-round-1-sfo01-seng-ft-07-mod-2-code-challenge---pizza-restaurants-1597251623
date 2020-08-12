Rails.application.routes.draw do
  resources :restaurantpizzas
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :restaurants
  resources :pizzas 
end
