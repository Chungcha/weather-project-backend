Rails.application.routes.draw do
  resources :users
  resources :favorites, only: [:create, :destroy]
  get "/test", to: "meta_weather#test"
  post "/search", to: "meta_weather#search"
  post "/location", to: "meta_weather#location"
  post "/geolocation", to: "meta_weather#geolocation"
  post "users/login", to: "users#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
