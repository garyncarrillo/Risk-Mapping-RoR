json.extract! user, :id, :email, :name, :password, :estado, :password_digest, :remember_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
