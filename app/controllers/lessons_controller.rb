class LessonsController < ApplicationController

  before_action :authorize, except: [:index, :show]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all.includes(:upvotes).to_a.sort{|a,b| b.upvotes.count <=> a.upvotes.count}
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    # @lesson.upvotes = 0

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'lesson posted!' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    upvote = Upvote.new
    upvote.user = current_user

    lesson = Lesson.find(params[:id])

    upvote.lesson = lesson
    upvote.save

    redirect_to lesson_path
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def lesson_params
    params.require(:lesson).permit(:video_link, :title, :description)
  end


end
