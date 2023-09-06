Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Root route
  root to: 'pages#home'

  # Custom route for the home page
  get '/home', to: 'pages#home', as: 'home'

  # Define Devise routes for user authentication
  devise_for :users

  # Define a resourceful route for users
  resources :users
  # Define a resourceful route for events
  resources :events
  # Note: The above 'resources :users' line is sufficient for defining user-related routes.

  # Avoid creating additional routes that match '/users' or '/users/:id'.
  # The resourceful route 'resources :users' already handles these routes.

  # If you want to customize the path prefix for Devise, you can do it like this:
  # devise_for :users, path: 'profile'

  # Additional routes should be defined below if needed.

end
