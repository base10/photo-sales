Rails.application.routes.draw do
  require 'sidekiq/web'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  get "/sign_up" => "users#new"
  get "/sign_in" => "sessions#new"
  get "/sign_out" => "sessions#destroy"

  namespace :admin do
    mount Sidekiq::Web => '/sidekiq'
  end

  #root "/pages/home.html"
end
