Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  get "up" => "rails/health#show", as: :rails_health_check
  root "events#index"
  resources :events
  resources :event_attending, only: [:new, :create]
end
