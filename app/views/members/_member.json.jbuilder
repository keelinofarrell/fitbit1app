json.extract! member, :id, :username, :password_digest, :name, :age, :email, :fitbit_id, :created_at, :updated_at
json.url member_url(member, format: :json)