class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:mypage, :my_lecture]
  def index
  end

  def mypage
    @likes = current_user.likes.where(likable_type: "Lecture").all
  end

  def my_lecture
    @likes = current_user.likes.where(likable_type: "Lecture").all
  end

  def my_comment
    @likes = current_user.likes.where(likable_type: "Lecture").all
  end

  def subscription
  end
end
