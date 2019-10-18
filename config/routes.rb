Rails.application.routes.draw do
  root "properties#index"
  # resources :closest_stations
  resources :properties
end
