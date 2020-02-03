json.extract! instructor, :id, :name, :email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
