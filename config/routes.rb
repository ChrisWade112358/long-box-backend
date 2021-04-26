Rails.application.routes.draw do
  
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :comics
      resources :collections
      resources :auth, only: [:create]
      resources :registrations, only: [:create]
      
    end
  end


  
end
