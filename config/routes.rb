Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [:new, :create]


    collection do
      get :top
    end

    # get restaurants/:id/chef => member
    member do
      get :chef
    end
  end

  resources :reviews, only: [:destroy]


end
