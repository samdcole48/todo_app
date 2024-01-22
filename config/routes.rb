Rails.application.routes.draw do
  root "main#index"

  match 'about', to: 'main#about', via: :get
  # go to the main controller and look for the about method

  match 'hello', to: 'main#hello', via: :get

  get 'main/index'

  resources :categories do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end

  #these are old routes, we are now using the resources method for our routes
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
