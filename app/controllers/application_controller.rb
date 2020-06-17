class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # layout :layout_by_resource
  #
  # private
  #
  #   def layout_by_resource
  #     if devise_controller?
  #       "devise"
  #     else
  #       "application"
  #     end
  #   end

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nombre, :email) }
  # end

  def configure_permitted_parameters
    # added_attrs = [:nombre, :email, :password, :password_confirmation, :remember_me]
    added_attrs = [:nombre, :email, :password]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
