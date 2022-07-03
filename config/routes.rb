Rails.application.routes.draw do
  resources :dog_houses, only: [:show]
  resources :reviews, only: [:show, :index, :create]

  #Parent/child relationship of the dog_houses and reviews
  Rails.application.routes.draw do

    resources :dog_houses, only: [:show] do
      resources :reviews, only: [:show, :index]
    end

    resources :reviews, only/; [:show, :index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
