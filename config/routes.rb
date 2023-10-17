# frozen_string_literal: true

Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/update'
  get 'recipes/destroy'
  get 'recipe/index'
  get 'recipe/show'
  get 'recipe/new'
  get 'recipe/update'
  get 'recipe/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
