Rails.application.routes.draw do
  # scope "(:locale)", locale: /en|ja/ do
  # root to: "users#index"
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  get 'static_pages/home'
  # get '/users/login'
  post '/users/actionLogin'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # resources :users, only: %i[new create index]
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
