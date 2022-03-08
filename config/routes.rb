Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :review, only: [:show, :index] do
      resources :comments
    end
  end  
  
  resources :reviews, only: [:show, :index, :create]
  
end
