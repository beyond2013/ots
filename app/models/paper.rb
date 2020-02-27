class Paper < ApplicationRecord

  belongs_to :program_session
  belongs_to :course_instructor
  belongs_to :exam

end
