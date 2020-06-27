Rails.application.routes.draw do
  devise_for :users
  get 'bienvenido', to: 'bienvenido#bienvenido'
  get 'restaurantes', to: 'restaurantes#index'
  get 'restaurantes/new', to: 'restaurantes#new', as: 'restaurante_new'
  post 'restaurantes', to: 'restaurantes#create'
  get 'restaurantes/:id', to: 'restaurantes#show', as: 'restaurante'
  get 'restaurantes/:id/edit', to: 'restaurantes#edit', as: 'restaurante_edit'
  patch 'restaurantes/:id', to: 'restaurantes#update'
  delete 'restaurantes/:id', to: 'restaurantes#destroy', as: 'restaurante_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
