class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :nazwa
      t.string :rodzaj

      t.timestamps null: false
    end
  end
end
