class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :user_type, :email, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password, :user_type ])
end

end
