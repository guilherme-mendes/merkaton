class ApplicationController < ActionController::Base

	
	before_action :configure_permitted_parameters, if: :devise_controller?

  def set_current_user

  		User.current_user = current_user
  end
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin])
  end

end

