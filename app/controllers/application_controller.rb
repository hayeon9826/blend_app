class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :user_type, :email, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation, :current_password, :user_type ])
end

def get_point
  @point = current_user.points.first_or_create(point: 1000)
end

def get_cart
  @cart = current_user.orders.cart.first_or_create
end

# def get_donation
#   @donation = current_user.donations.create
# end

end
