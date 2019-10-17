json.extract! student, :id, :first_name, :last_name, :email_address, :location_address, :location_city, :location_state, :location_zip, :mobile_phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
