json.array!(@employee_rooms) do |employee_room|
  json.extract! employee_room, :id, :employee_id, :room_id
  json.url employee_room_url(employee_room, format: :json)
end
