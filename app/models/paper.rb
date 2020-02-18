class Paper < ApplicationRecord
  belongs_to :session
  belongs_to :program
  belongs_to :exam
  belongs_to :course
  belongs_to :instructor
	has_many :questions

	validates :session_id, :program_id, :exam_id, :course_id, :instructor_id, :allowedtime, numericality: { only_integer: true } 
end
