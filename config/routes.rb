Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :habitsets do
    get '/:id/edit', to: "habitsets#edit", as: :habitset_edit
  end

  resources :profiles do
    get '/habitsets', to: "profiles#habitsets"
    get '/reviews', to: "profiles#reviews"
    get '/programs', to: "profiles#programs"
  end

end
