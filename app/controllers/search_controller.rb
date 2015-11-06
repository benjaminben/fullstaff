class SearchController < ApplicationController

  def index
    @tag =
    @tags = Tag.all
    if params[:tag]
      @lessons = Lesson.tagged_with(params[:tag])
    else
      @lessons = Lesson.all
    end
  end

end
