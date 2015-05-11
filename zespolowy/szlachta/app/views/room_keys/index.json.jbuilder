json.array!(@room_keys) do |room_key|
  json.extract! room_key, :id, :klucz, :zapasowy
  json.url room_key_url(room_key, format: :json)
end
