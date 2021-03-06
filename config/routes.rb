Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  resources :habitsets do
    get ':id/destroy', to: "habitsets#destroy", as: "destroy"
    get ':id/destroydate', to: "habitsets#destroydate", as: "destroydate"
    get ':id/destroystartdate', to: "habitsets#destroystartdate", as: "destroystartdate"
    get ':id/destroyreviewedat', to: "habitsets#destroyreviewedat", as: "destroyreviewedat"
    get ':id/copy', to: "habitsets#copy", as: "copy"
  end

  resources :habit_elements do
    get ':id/calendar' , to: "habit_elements#destroy"
  end

  get '/coachreviews', to: "habitsets#coachreviews", as: "coachreviews"


end
