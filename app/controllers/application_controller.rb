class ApplicationController < ActionController::Base
  # after_action :user_activity
	before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
	before_action :inspect_logout
  protect_from_forgery with: :exception
  private
  def configure_permitted_parameters
    added_attrs = [:user_name, :email, :avatar, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  # def user_activity
  #   current_user.try :touch
  # end  
  def inspect_logout
    if request.path == "/users/sign_out"
      current_user.update(last_seen: Time.now-1.minute)
    end
  end
end
