class UsersController < ApplicationController
  before_action :require_user, only: [:edit, :update]
  before_action :require_same_user, only: [:edit, :update]

  def index
    @users= User.all.paginate(page: params[:page], per_page: 3)
  end

  def new 
    @user= User.new
  end

  def create 
    @user= User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] ="User has been successfully created."
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User Info has been updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email , :password )
  end

  def require_same_user
    if current_user != @user
      flash[:alert] = "You can edit your own account."
      redirect_to user_path(current_user)
    end
  end
end
