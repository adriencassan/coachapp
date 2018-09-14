Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workoutsets do
    resources :repetitions, only: [ :new,]
  end

  resources :repetitions, only: [:update,:destroy]

  resources :workouts, only: [:show] do
    resources :workoutsets, only: [:create]
  end


  resources :profiles do
    resources :results, only: [:index, :create]
    resources :workouts, only: [:index]
    get '/coachee', to: "profiles#coachee", as: :profile_coachee
    get '/programs/:id', to: "workouts#program", as: :program
    get '/programs/:id/new_workout', to: "workouts#create_by_program", as: :program_new_workout
    post '/programs/:id/new', to: "workoutsets#create_programset", as: :program_new_programset
  end

end
