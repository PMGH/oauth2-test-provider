Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users

  get '/me' => 'application#me'

  root to: 'home#index'
end
