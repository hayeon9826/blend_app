class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]


  def new
    @lecture = Lecture.find(params[:lecture_id])
  end

  def create
    @lecture = Lecture.find(params[:comment][:commentable_id])
    @comment = @lecture.comments.create!(comment_params)
    # respond_to do |format|
    #   format.js
    #   # format.html
    # end
    # redirect_to lecture_path(@lecture.id)
  end

  def destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :commentable_type, :commentable_id, :rating)
  end


end
