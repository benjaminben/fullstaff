class MainController < ApplicationController

  def index
    @lessons = Lesson.all
    @tags = Tag.all
    # @user = current_user
  end

  def avatar
    @avatar = current_user.avatar
  end

end
