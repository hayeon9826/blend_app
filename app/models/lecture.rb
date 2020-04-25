class Lecture < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy

  enum category: {"언어": 0, "창업교육": 1, "직업교육": 2, "코딩": 3, "문화": 4, "콘텐츠 제작": 5}

  def self.create_lectures
    (1...6).each do |p|
      Lecture.create!(category: p, title: "Lecture #{p}", address: "Millions of refugees worldwide don't have access to education, career development, and decent jobs.
As a result of persecution, conflict, violence, human rights violations, or climate change they left behind communities and homes, but refugees have huge potential that is under-utilised. HireChance is on a quest to turn a perceived burden into a impactful opportunity for refugees and the world economy. These are the steps we are taking:")
    end
  end

  def self.create_language_lectures
    (1...6).each do |p|
      Lecture.create!(category: 0, title: "Lecture #{p}", address: "Millions of refugees worldwide don't have access to education, career development, and decent jobs.
As a result of persecution, conflict, violence, human rights violations, or climate change they left behind communities and homes, but refugees have huge potential that is under-utilised. HireChance is on a quest to turn a perceived burden into a impactful opportunity for refugees and the world economy. These are the steps we are taking:")
    end
  end

end
