class SessionsController < ApplicationController

  def new
  end

  def create
    
    email= params[:email]
    password= params[:password]
    user= User.find_by(email: email.downcase) if !email.nil?

    if user && user.authenticate(password)
      session[:user_id]= user.id
      flash[:notice] = "Logged in successfully."
      redirect_to user
    
    else
      flash.now[:alert] = "Something was wrong with your credentials."
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out successfully."
    redirect_to  root_path
  end

end