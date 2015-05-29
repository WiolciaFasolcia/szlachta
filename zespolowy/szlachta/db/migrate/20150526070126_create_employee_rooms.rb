class CreateEmployeeRooms < ActiveRecord::Migration
  def change
    create_table :employee_rooms, id do |t|
      t.belongs_to :employee, index: true
	  t.belongs_to :room, index: true

      t.timestamps null: false
    end	
  end
end
