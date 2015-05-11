class CreateRoomKeys < ActiveRecord::Migration
  def change
    create_table :room_keys do |t|
      t.string :klucz
      t.boolean :zapasowy

      t.timestamps null: false
    end
  end
end
