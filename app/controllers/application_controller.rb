class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #before_filter :authenticate_user_from_token!
  #before_filter :authenticate_user!

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit! }
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit! }
  end
  private 
    def authenticate_user_from_token!
      user_email = params[:user_email].presence
      user       = user_email && User.find_by_email(user_email)

      if user && Devise.secure_compare(user.authentication_token, params[:user_token])
        sign_in user, store: false
      end
    end
  	# def current_user
  	# 	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	# end
  	# helper_method :current_user
end
