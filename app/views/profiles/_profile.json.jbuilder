json.extract! profile, :id, :User_id, :description, :tags, :created_at, :updated_at
json.url profile_url(profile, format: :json)
