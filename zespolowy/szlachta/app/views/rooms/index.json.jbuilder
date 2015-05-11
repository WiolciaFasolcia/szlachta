json.array!(@rooms) do |room|
  json.extract! room, :id, :nazwa, :rodzaj
  json.url room_url(room, format: :json)
end
