Rails.application.routes.draw do
  resources :churches

  post "churches/get_directions", to: "churches#get_directions"
end
