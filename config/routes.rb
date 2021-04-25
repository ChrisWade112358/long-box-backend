Rails.application.routes.draw do
  
  resources :collections
  resources :comics
  namespace :api do
    namespace :v1 do
      resources :users
      resources :comics
      resources :auth, only: [:create]
      resources :registrations, only: [:create]
      
    end
  end


  
end
