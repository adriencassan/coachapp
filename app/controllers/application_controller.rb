class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if resource.profile.role == "Athlete"
      path = habitsets_path
    else
      path = coachreviews_path
    end
    path
  end
end
