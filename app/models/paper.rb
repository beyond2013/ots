class Paper < ApplicationRecord

  belongs_to :program_session, foreign_key: 'program_sessions_id'
  belongs_to :course_instructor, foreign_key: 'course_instructors_id'
  belongs_to :exam

  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions
end
