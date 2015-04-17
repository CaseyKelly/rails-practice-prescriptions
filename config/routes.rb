Rails.application.routes.draw do
  root "dashboard#index"

  resources :patients do
    resources :perscriptions
  end


  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy", as: :signout
end
