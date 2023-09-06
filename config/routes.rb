Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/home', to: 'pages#home', as: 'home'
    # Root route
    root to: 'pages#home'
end
