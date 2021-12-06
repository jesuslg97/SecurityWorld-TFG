Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  resources :home

  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'

  devise_for :users

  resources :categories do
    resources :articles, except: %i[index new create edit update destroy] do
      resources :generals, :questions
      resources :attacks do
        resources :contents
      end
    end
  end

  # Admin
  resources :articles, only: %i[index new create edit update destroy] do
    resources :generals, :questions
    get 'attacks_admin/:id', to: 'attacks#show_admin', as: :show_admin
    resources :attacks do
      resources :contents
    end
  end

  resources :extras do
    resources :extra_infos
  end

end
