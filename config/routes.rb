Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'
  # get 'books/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :books do
    member do
      get :delete
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
