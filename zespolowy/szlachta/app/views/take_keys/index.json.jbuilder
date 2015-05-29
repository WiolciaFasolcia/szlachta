json.array!(@take_keys) do |take_key|
  json.extract! take_key, :id, :nazwa_sali, :rodzaj_klucza, :osoba_pobierajaca, :godzina_pobrania, :godzina_oddania
  json.url take_key_url(take_key, format: :json)
end
