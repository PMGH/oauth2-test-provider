Rails.application.routes.draw do
  use_doorkeeper
  # use devise for users and override sign_up, sign_in and sign_out with custom controllers (to respond to json for API)
  devise_for :users, :controllers => { sessions: 'sessions', registrations: 'registrations' }

  get '/me' => 'application#me'

  root to: 'home#index'
end
