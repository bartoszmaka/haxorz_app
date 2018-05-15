Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }

  root to: 'home#index'
  resources :home, only: %i[index]

  jsonapi_resoures :items
  jsonapi_resoures :agendas
  # resources :items, only: %i[index]
  # resources :agendas, only: %i[index]
end
