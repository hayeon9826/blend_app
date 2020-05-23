class Point < ApplicationRecord
  belongs_to :user, optional: true

  def buy_point
    current_user.point.increment!(:amount, 10)
  end

  def donate_point
    current_user.point.decrement!(:amount, 10)
  end

end
