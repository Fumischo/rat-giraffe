Rails.application.routes.draw do
  resources :properties
  resources :closest_stations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
