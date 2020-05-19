class Point < ApplicationRecord
  belongs_to :user, optional: true

  def buy_point
  end

  def donate_point
  end

end
