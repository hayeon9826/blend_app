class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true, optional: true
  belongs_to :user

  def get_lecture
    lecture = Lecture.find(self.commentable_id)
    return lecture
  end
end
