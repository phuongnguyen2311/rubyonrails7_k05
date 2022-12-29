Rails.application.routes.draw do
  get 'static_pages/home'
  get '/users/login'
  post '/users/actionLogin'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users, only: %i[new create index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
