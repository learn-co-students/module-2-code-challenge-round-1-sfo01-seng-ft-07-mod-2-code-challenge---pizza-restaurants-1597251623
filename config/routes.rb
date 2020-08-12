Rails.application.routes.draw do
  
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'

  # get '/pizzas/:id', to: 'pizzas#show'
  # get '/restaurants/:id', to: 'restaurants#show'

  # get '/restaurant_pizzas', to: 'restaurant#index'
  # get '/restaurant_pizzas/:id', to: 'restaurant#show'

  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
  resources :restaurant_pizzas, only: [:show, :new :create]

end 


