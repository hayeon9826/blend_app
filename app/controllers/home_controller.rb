class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:cover]

  def index
    @comments_count = current_user.comments.count
    @likes_count = current_user.likes.where(likable_type: "Lecture").all.count
    @point = get_point
    @donation = current_user.donations.sum("point")
    @current_rank = User.order(:donation_total).reverse.index(current_user) + 1
  end

  def mypage
    @likes = current_user.likes.where(likable_type: "Lecture").all
    @point = get_point
    @donations = current_user.donations
    @blend_total = current_user.donations.sum("point")
    @user_rank = User.order(:donation_total).reverse.take(5)
    @current_rank = User.order(:donation_total).reverse.index(current_user) + 1
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
