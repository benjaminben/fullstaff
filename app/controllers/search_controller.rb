class SearchController < ApplicationController

  def index
    if params[:tag]
      @lessons = Lesson.tagged_with(params[:tag])
    else
      @lessons = Lesson.all
    end
  end

end
