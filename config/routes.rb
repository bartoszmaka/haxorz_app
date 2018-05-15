Rails.application.routes.draw do
  # devise_for :users, defaults: { format: :json }
  devise_for :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }

    root to: 'home#index'

    resources :home, only: %i[index]
    resources :items, only: %i[index]
    resources :agendas, only: %i[index]
end
