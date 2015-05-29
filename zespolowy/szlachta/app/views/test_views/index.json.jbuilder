json.array!(@test_views) do |test_view|
  json.extract! test_view, :id, :Sala, :Klucz, :Pracownik, :Pilot, :Kabel, :Godzin_pobrania, :Godzina_oddania
  json.url test_view_url(test_view, format: :json)
end
