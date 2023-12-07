Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "intro", to: "pages#intro"
  get "dashboard", to: "dashboard#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :bookmarks, only: [:index, :destroy]

  resources :workspaces do
    resources :bookings, only: [:create]
    resources :bookmarks, only: [:create]
  end

  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: [:create]
  end

  resources :bookings, only: [:destroy] do
    member do
      patch :accept
      patch :decline
    end
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
