class Answer < ActiveRecord::Base

  belongs_to :question, dependent: :destroy

  validates :body, presence: true, length: { minimum: 7, maximum: 100 }

end