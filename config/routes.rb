Rails.application.routes.draw do
  
  root "main#index"

  match 'about', to: 'main#about', via: :get
  # go to the main controller and look for the about method

  match 'hello', to: 'main#hello', via: :get

  get 'main/index'
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
