class RoomKey < ActiveRecord::Base
	validates_presence_of :room_id
	validates_uniqueness_of :zapasowy, :scope => :room_id

	 belongs_to :room
	 has_many :take_keys

end
