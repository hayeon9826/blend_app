class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  enum user_type: {"커피 구매자": 0, "Learner": 1}

  def has_like? like
      Like.where(likable_id: like.id).present?
  end

end
