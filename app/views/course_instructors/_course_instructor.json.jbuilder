json.extract! course_instructor, :id, :course_id, :instructor_id, :created_at, :updated_at
json.url course_instructor_url(course_instructor, format: :json)
