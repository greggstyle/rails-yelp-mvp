Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # get "restaurants/:id", to:"restaurants#show", as: 'show'
  # post "restaurants", to: "restaurants#create", as: 'create'
  # get "restaurant/:id/edit", to: "restaurants#edit", as: 'edit'
  # patch "restaurants/:id", to: "restaurants#update", as: 'update'
  # delete "restaurants/:id", to: "restaurants#destroy", as: 'destroy'

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end
