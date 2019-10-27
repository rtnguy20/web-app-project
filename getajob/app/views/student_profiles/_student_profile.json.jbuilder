json.extract! student_profile, :id, :student_image, :description, :created_at, :updated_at
json.url student_profile_url(student_profile, format: :json)
