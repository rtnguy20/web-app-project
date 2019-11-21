json.extract! jobrec, :id, :first_name, :last_name, :email_address, :created_at, :updated_at
json.url jobrec_url(jobrec, format: :json)
