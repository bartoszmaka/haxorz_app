Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }

  root to: 'home#index'

  resources :home, only: %i[index]
  resources :items, only: %i[index]
  resources :agendas, only: %i[index]
end
