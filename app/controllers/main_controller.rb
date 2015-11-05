class MainController < ApplicationController

  def index
    @lessons = Lesson.all
    @tags = Tag.all
  end

end
