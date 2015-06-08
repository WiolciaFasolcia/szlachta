# == Schema Information
#
# Table name: room_keys
#
#  id         :integer          not null, primary key
#  klucz      :string(255)
#  zapasowy   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#

class RoomKey < ActiveRecord::Base
	validates_presence_of :room_id
	validates_uniqueness_of :zapasowy, :scope => :room_id

	 belongs_to :room
	 has_many :take_keys

end
