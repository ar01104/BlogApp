json.extract! profile, :id, :user_id, :description, :tags, :created_at, :updated_at
json.url profile_url(profile, format: :json)
