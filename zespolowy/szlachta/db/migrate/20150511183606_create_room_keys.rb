class CreateRoomKeys < ActiveRecord::Migration
  def change
    create_table :room_keys do |t|
      t.string :klucz
      t.boolean :zapasowy
      t.integer :room_id

      t.timestamps null: false
    end
    	add_foreign_key :room_keys, :rooms
  end
end
