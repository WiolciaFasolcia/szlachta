class RoomKey < ActiveRecord::Base
	#validates_presence_of :room
	#validates_uniqueness_of :room

	belongs_to :room

end
