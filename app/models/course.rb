class Course < ApplicationRecord
	has_many :course_instructors
	has_many :instructors, through: :course_instructors
	
  validates :title, presence: true
	validates :code, presence: true


end
