class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likable, polymorphic: true
  def get_comments
    comments = Lecture.find(self.likable_id).comments
    return comments
  end
end
