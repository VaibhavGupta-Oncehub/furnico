class UsersController < ApplicationController
  def new 
    @user= User.new
  end
  def create 
    
    @user= User.new(params.require(:user).permit(:first_name, :last_name, :email , :password_digest))
   
    if @user.save
      flash[:notice] ="User has been successfully created."
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
end
