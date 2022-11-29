json.extract! student, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url student_url(student, format: :json)
