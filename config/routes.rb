Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "pages#about"

  get 'choices/new', to: 'choices#new'
end
