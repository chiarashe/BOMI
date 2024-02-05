Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard"
  get 'profile/new', to: 'profiles#new', as: 'new_profile'
  patch 'profile', to: 'profiles#update', as: 'update_profile'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users, only: [:show, :update]
  resources :doctors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reports, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  resources :blog, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Defines the root path route ("/")
  # root "posts#index"
end
