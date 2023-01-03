class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :check_authentication

  def check_authentication
    return if current_user.present? # tra ve neu current_user ton tai (login)

    flash[:danger] = 'Please login'
    redirect_to login_path and return
  end
end
