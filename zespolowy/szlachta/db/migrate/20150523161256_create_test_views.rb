class CreateTestViews < ActiveRecord::Migration
  def change
    create_table :test_views do |t|
      t.string :Sala
      t.string :Klucz
      t.string :Pracownik
      t.boolean :Pilot
      t.boolean :Kabel
      t.datetime :Godzin_pobrania
      t.datetime :Godzina_oddania

      t.timestamps null: false
    end
  end
end
