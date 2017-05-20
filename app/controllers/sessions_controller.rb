class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      if @user.activated?
        log_in @user
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_back_or @user
      else
        message  = "Compte non activé."
        message += "Merci de vérifier votre boîte mail pour activer votre compte."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      # Error message
      flash.now[:danger] = 'Email ou mot de passe invalide'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
