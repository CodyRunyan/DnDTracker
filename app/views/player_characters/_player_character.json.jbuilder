json.extract! player_character, :id, :character_name, :player_name, :ac, :hp, :image :created_at, :updated_at
json.url player_character_url(player_character, format: :json)
