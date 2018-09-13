Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workoutsets do
    resources :repetitions, only: [:update, :new, :destroy]
  end

  resources :workouts, only: [:show] do
    resources :workoutsets, only: [:create]
  end


  resources :profiles do
    resources :results, only: [:index, :create]
    resources :workouts, only: [:index]
    get '/programs/:id', to: "workouts#program", as: :profile_program
  end

end
