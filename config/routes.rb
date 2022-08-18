Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :new, :create, :destroy, :show] do
    resources :bookmarks, only: [:index, :create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
