Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :workoutsets do
    resources :repetitions, only: [:update, :new]
  end
  resources :workouts, only: [:show]


  resources :profiles do
    resources :results, only: [:index, :create]
    resources :workouts, only: [:index]
  end

end
