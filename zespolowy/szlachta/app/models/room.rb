# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  nazwa      :string(255)
#  rodzaj     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type_id    :integer
#  pokoj      :string(255)
#  string     :string(255)
#  dom        :string(255)
#

class Room < ActiveRecord::Base
	belongs_to :type
	has_many :room_keys
	has_many :take_keys

	validates_each :nazwa do |model, attr, value| 
		model.errors.add(attr, 'musi zaczynać sie z duzej litery') if value =~ /\A[a-e]/
	end
	
	validates_presence_of :nazwa, :type
	validates_uniqueness_of :nazwa 
 	validates_length_of :nazwa, :in => 3..5	
	

 
 def name_room
 	"#{nazwa}"
 end


end
