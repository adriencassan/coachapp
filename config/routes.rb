Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workoutsets do
    resources :repetitions, only: [ :new]
    patch '/update_feedback', to: "workoutsets#update_feedback"
  end

  resources :repetitions, only: [:update,:destroy]

  resources :workouts, only: [:show] do
    resources :workoutsets, only: [:create]
  end

  get 'coach/feedbacks', to: "workoutsets#feedbacks", as: :coach_feedbacks
  get 'coach/coachees', to: "profiles#coachees", as: :coachees

  resources :profiles do
    resources :results, only: [:index, :create]
    resources :workouts, only: [:index]
    get '/coachee', to: "profiles#coachee", as: :profile_coachee
    get '/coachee/results', to: "profiles#coachee_results", as: :profile_coachee_results
    get '/coachee/feedbacks', to: "profiles#coachee_feedbacks", as: :profile_coachee_feedbacks
    get '/programs', to: "workouts#programs", as: :programs
    get '/programs/:id', to: "workouts#program", as: :program
    get '/programs/:id/new_workout', to: "workouts#create_by_program", as: :program_new_workout
    post '/programs/:id/new', to: "workoutsets#create_programset", as: :program_new_programset
  end

  get 'export', to: "profiles#export", defaults: { format: 'csv' }
end
