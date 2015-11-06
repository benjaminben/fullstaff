class UsersController < ApplicationController

  # @default_pic = "http://www.clipartbest.com/cliparts/4Tb/okj/4Tbokjjqc.png"

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.avatar == ""
      @user.avatar = "http://www.clipartbest.com/cliparts/4Tb/okj/4Tbokjjqc.png"
    end
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Account Created! #YouMadeIt"
      redirect_to user_path(@user)
    else
      render 'new'
    end


  end

  def show
    @user = User.find(params[:id])
    @commented = Lesson.includes(:comments).where(:comments => {user_id: @user}).all
    @upvoted_by_user = Lesson.all.select do |lesson|
      if lesson.upvotes > 0
        user_ids_who_upvoted = lesson.upvote_instances.map(&:user_id)
        user_ids_who_upvoted.include? @user.id
      end
    end
  end

def edit
  @user = User.find(params[:id])
  @commented = Lesson.includes(:comments).where(:comments => {user_id: @user}).all
  @upvoted_by_user = Lesson.all.select do |lesson|
    if lesson.upvotes > 0
      user_ids_who_upvoted = lesson.upvote_instances.map(&:user_id)
      user_ids_who_upvoted.include? @user.id
    end
  end
end

def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to @user
  else
    render 'edit'
  end
end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :handle, :name, :phone, :summary, :avatar)
    end

end
