Rails.application.routes.draw do
  devise_for(
    :users,
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    },
    defaults: { format: :json }
  )

  # Route to verify logged in user
  get '/current_user', to: 'application#current_user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # Entity routes go in here
      resources :worlds, only: %i[index create update]
      resources :comments, only: [:create]
    end
  end
end
