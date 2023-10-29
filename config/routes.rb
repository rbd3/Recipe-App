# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :show, :new, :create, :destroy]
  resources :foods
  resources :recipes, only: [:index, :show, :new, :create, :destroy]

  resources :recipes do
    resources :recipe_foods, only: [:index, :show, :new, :create, :destroy]
  end
end
