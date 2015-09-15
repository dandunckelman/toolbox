Rails.application.routes.draw do
  root 'churches#index'
  resources :churches

  post "churches/directions", to: "churches#directions"
end
