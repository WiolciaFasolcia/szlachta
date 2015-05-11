json.array!(@employees) do |employee|
  json.extract! employee, :id, :imie, :nazwisko, :tytul, :telefon, :email
  json.url employee_url(employee, format: :json)
end
