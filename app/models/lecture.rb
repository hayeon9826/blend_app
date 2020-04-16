class Lecture < ApplicationRecord
  enum category: {"언어": 0, "창업교육": 1, "직업교육": 2, "코딩": 3, "문화": 4, "콘텐츠 제작": 5}
end
