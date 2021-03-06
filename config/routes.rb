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

  jsonapi_resources :items
  jsonapi_resources :agendas
  jsonapi_resources :questions
end
