Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'home/index'

  devise_for :users

  #get 'categories/:id', to: 'categories#index', as: :category
  #get 'categories/:id', to: 'categories#show', as: :show_category

  resources :categories

  #get 'articles/index'
  #get 'articles/show'

  resources :articles

  #get 'attacks/index'
  #get 'attacks/show'

  resources :attacks

  get 'attacks_admin/:id', to: 'attacks#show_admin', as: :show_admin

  #get 'extras/index'
  #get 'extras/show'

  resources :extras

  #get 'extra_infos/index'
  #get 'extra_infos/show'

  resources :extra_infos

  #get 'generals/index'
  #get 'generals/show'

  resources :generals

  #get 'questions/index'
  #get 'questions/show'

  resources :questions

  #get 'contents/index'
  #get 'contents/show'

  resources :contents

  resources :home

  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'

end
