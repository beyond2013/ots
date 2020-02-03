json.extract! paper, :id, :session_id, :program_id, :exam_id, :course_id, :instructor_id, :created_at, :updated_at
json.url paper_url(paper, format: :json)
