class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def new
  #   @user = User.new
  # end

  # def create
  #   User.cerate(user_params)
  # end

  # private
  # def user_params
  #   params.required().permit()
  # end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
