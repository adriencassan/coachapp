class SessionsController < Devise::SessionsController

  def new
    super
    redirect_to: root_path
  end
end
