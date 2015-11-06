class LessonsController < ApplicationController

  helper LessonsHelper

  before_action :authorize, except: [:index, :show]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    # @lessons = Lesson.all.includes(:upvotes).to_a.sort{|a,b| b.upvotes.count <=> a.upvotes.count}
    if params[:tag]
      @lessons = Lesson.tagged_with(params[:tag])
    else
      @lessons = Lesson.all
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @user = User.find(@lesson.user_id)
    @comment = Comment.new
    @comments = @lesson.comments
  end

  def new
    @lesson = Lesson.new
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def create
    @lesson = current_user.uploads.create(lesson_params)
    # @uploader = current_user
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

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to @lesson
    else
      render 'edit'
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to root_path
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
    params.require(:lesson).permit(:video_link, :title, :description, :all_tags)
  end


end
