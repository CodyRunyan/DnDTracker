json.extract! monster, :id, :name, :ac, :hp, :tags, :image, :created_at, :updated_at
json.url monster_url(monster, format: :json)
