class Course < ApplicationRecord
	has_many :assignments
	has_many :instructors, through: :assignments
	validates :title, presence: true
	validates :code, presence: true
end
