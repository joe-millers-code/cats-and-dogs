Rails.application.routes.draw do
  resources :comments
  resources :dogs
  resources :cats
  
  root 'static_pages#home', as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/login", to: 'login#new', as: "login"
  post "/login", to: 'login#create'

  delete "/logout", to: 'login#destroy'

  get "/register", to: 'static_pages#register', as: "register"


end

