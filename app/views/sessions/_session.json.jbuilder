json.extract! session, :id, :from, :to, :created_at, :updated_at
json.url session_url(session, format: :json)
