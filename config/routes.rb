Rails.application.routes.draw do
  # root to: 'home#index'
  root to: 'api/players#index'

  namespace :api do
    post '/users', to: 'users#create'
    post '/login', to: 'auth#create'
    resources :players, :only => [:index, :create, :show, :update, :destroy]
    resources :teams, except: [:new, :edit] do
      resources :players, :only =>[:index, :show]
    end
  end
end
