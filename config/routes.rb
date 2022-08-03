Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"

  namespace :api do
    namespace :v1 do
      resources :projects, params: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all #it routes all requests that aren't for existing paths predifined in our API back to the index path. 
end
