class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html {redirect_to :back, notice: 'Thanks for posting a review!'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html {redirect_to lesson_path(@comment.lesson)}
      else
        format.html {render 'edit'}
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to lesson_path(@comment.lesson)}
    end
  end

  def comment_params
    params.require(:comment).permit(:content, :lesson_id, :user_id)
  end

end
