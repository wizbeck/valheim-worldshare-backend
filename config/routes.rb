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

  # Verify if user is logged in
  get :current_user, to: 'current_user#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # Entity routes go in here
      resources :worlds, only: %i[index create update]
      resources :comments, only: [:create]
    end
  end
end
