Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    resources :restaurants do
      resources :reviews, only: [:create, :new]
    end
  end
  resources :reviews, only: [:destroy]
end

