class CourseInstructor < ApplicationRecord

  belongs_to :course
  belongs_to :instructor

  has_many :papers

  def course_with_instructor
    "#{Course.find(course_id).title} - #{Instructor.find(instructor_id).name}"
  end

end
