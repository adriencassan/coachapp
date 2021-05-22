class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.profile.role == "Athlete"
      path = habitsets_path(resource.profile)
    else
      path = habitsets_path(resource.profile)
    end
    path
  end
end
