Rails.application.routes.draw do
  require "sidekiq/web"

  namespace :admin do
    mount Sidekiq::Web => "/sidekiq"
    resources :users

    root to: "users#index"
  end

  resources :photos

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  get "/sign_up" => "users#new"
  get "/sign_in" => "sessions#new"
  get "/sign_out" => "sessions#destroy"

  # root "/pages/home.html"
end
