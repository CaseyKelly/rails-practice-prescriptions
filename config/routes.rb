Rails.application.routes.draw do
  root "dashboard#index"

  resources :patients

  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy", as: :signout
end
