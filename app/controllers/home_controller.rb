class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:mypage]
  def index
  end

  def mypage
    @likes = current_user.likes.where(likable_type: "Lecture").all
  end

  def subscription
  end
end
