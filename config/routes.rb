Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'home/index'

  get 'categories', to: 'categories#index'
  get 'categories/:id', to: 'categories#show', as: :show_category

  #resources :categories

end
