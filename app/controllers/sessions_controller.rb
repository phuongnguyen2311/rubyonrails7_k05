class SessionsController < ApplicationController
  skip_before_action :check_authentication, only: %i[new create]
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      # Log the user in and redirect to the user's show page.
      flash[:success] = 'Wellcom'
      log_in(user)
      redirect_to users_path
    else
      # Create an error message.
      flash[:danger] = 'Email/Pass incorrect'
      render :new
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
