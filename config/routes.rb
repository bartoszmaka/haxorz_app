Rails.application.routes.draw do
  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'register'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

  root to: 'home#index'
  resources :home, only: %i[index]

  jsonapi_resoures :items
  jsonapi_resoures :agendas
  # resources :items, only: %i[index]
  # resources :agendas, only: %i[index]
end
