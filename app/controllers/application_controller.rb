class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 before_action :configure_permitted_parameters, if: :devise_controller?
 helper_method :current_order

   def current_order
     if session[:order_id]
       Order.find(session[:order_id])
     else
       Order.new
     end
   end


  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :username, :password,:avatar) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :username, :password, :current_password, :avatar) }
  end
end
