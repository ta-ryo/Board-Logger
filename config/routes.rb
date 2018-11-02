Rails.application.routes.draw do
  root 'boards#index'
  get 'boards/show/:id', to: 'boards#show', as: 'boards_show'
  post 'boards/create', to: 'boards#create'
  post 'waves/create', to: 'wave#create', as: 'wave_create'
  post 'gmaps/create', to: 'gmap#create', as: 'gmap_create'
  post 'boards/createManner', to: 'boards#createManner', as: 'boards_createManner'
end
