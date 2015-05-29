class CreateTakeKeys < ActiveRecord::Migration
  def change
    create_table :take_keys do |t|
      t.string :nazwa_sali
      t.string :rodzaj_klucza
      t.string :osoba_pobierajaca
      t.datetime :godzina_pobrania
      t.datetime :godzina_oddania

      t.timestamps null: false
    end
  end
end
