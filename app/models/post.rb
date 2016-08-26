class Post < ActiveRecord::Base
  has_many :replies
  validates :title, presence: { message: "제목이 비어있습니다"}
  #예외처리하기 타이틀에값이없으면출력하지않는다
  belongs_to :user
end
