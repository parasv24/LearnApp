class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render nothing: true, status: :forbidden }
      format.html { redirect_to secure_route, alert: exception.message }
    end
  end
  protected

  def after_sign_in_path_for(resource)
    user_path(resource) # Redirect to user's profile page
  end

  private

  def secure_route
    schools_path
  end
end
