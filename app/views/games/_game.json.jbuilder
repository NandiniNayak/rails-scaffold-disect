json.extract! game, :id, :name, :price, :created_at, :updated_at
json.url game_url(game, format: :json)
