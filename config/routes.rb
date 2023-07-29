Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "users/sign_out" => "users/sessions#destroy"
  end

  root "events#index"

  get "/user", to: "users#show"
  
  resources :events
  resources :event_attendences, only: [:create, :destroy]
end
