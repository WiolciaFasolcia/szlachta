class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :imie
      t.string :nazwisko
      t.string :tytul
      t.string :telefon
      t.string :email

      t.timestamps null: false
    end
  end
end
