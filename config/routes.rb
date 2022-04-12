Rails.application.routes.draw do
  resources :favorites
  root "movies#index"
  resources :movies do
    resources :reviews
  end
  resource :session, only: [:new, :create, :destroy]
  get "signin" => "sessions#new"
  resources :users
  get "signup" => "users#new"
end
