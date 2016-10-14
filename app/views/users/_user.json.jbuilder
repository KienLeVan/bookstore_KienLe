json.extract! user, :id, :email, :phone, :full_name, :birthday, :created_at, :updated_at
json.url user_url(user, format: :json)