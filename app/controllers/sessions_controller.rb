class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in @user
      redirect_to @user
    else
      # Error message
      flash.now[:danger] = 'Email ou mot de passe invalide'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
