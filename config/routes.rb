Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'home/index'

  #get 'categories/:id', to: 'categories#index', as: :category
  #get 'categories/:id', to: 'categories#show', as: :show_category

  resources :categories

  #get 'articles/index'
  #get 'articles/show'

  resources :articles

  #get 'attacks/index'
  #get 'attacks/show'

  resources :attacks


end
