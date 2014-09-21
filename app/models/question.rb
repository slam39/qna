class Question < ActiveRecord::Base

  has_many :answers

  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 512 }

end