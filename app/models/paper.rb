class Paper < ApplicationRecord
  belongs_to :session
  belongs_to :program
  belongs_to :exam
  belongs_to :course
  belongs_to :instructor
	has_many :questions
end
