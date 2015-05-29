class CreateTakeKeys < ActiveRecord::Migration
  def change
    create_table :take_keys do |t|
      t.string :nazwa_sali
      t.string :rodzaj_klucza
      t.string :osoba_pobierajaca
      t.datetime :godzina_pobrania
      t.datetime :godzina_oddania
      t.integer :room_id
      t.integer :room_key_id
      t.integer :employee_id

      t.timestamps null: false
    end
      add_foreign_key :take_keys, :rooms
      add_foreign_key :take_keys, :room_keys
      add_foreign_key :take_keys, :employees
  end
end
