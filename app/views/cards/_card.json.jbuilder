json.extract! card, :id, :name, :title, :artist, :type, :cost, :set, :rarity, :power, :toughness, :identity, :created_at, :updated_at
json.url card_url(card, format: :json)
