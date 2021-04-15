class SessionsController < ApplicationController
  before_action :load_user, only: [:create]
  def new; end

  def create
    if @user&.authenticate(params[:session][:password])
      if @user.activated?
        log_in @user
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_back_or @user
      else
        message = t("users.not_activatie_txt")
        message += " #{t("users.activate_message_txt")}"
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = t :login_error_txt
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def load_user
    @user = User.find_by(email: params[:session][:email].downcase)
  end
end
