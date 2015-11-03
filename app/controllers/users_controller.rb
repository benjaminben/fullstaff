class UsersController < ApplicationController

  @default_pic = "http://www.clipartbest.com/cliparts/4Tb/okj/4Tbokjjqc.png"

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Account Created! #YouMadeIt"
      redirect_to user_path(@user)
    else
      render 'new'
    end
    if @user.avatar = nil
      @user.avatar = @default_pic
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :handle, :name, :phone, :summary, :avatar)
    end

end
