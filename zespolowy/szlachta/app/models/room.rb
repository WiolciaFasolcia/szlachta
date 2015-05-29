class Room < ActiveRecord::Base

validates_each :nazwa do |model, attr, value| 
model.errors.add(attr, 'musi zaczynać sie z duzej litery') if value =~ /\A[a-e]/

end
	validates_presence_of :nazwa, :type
	validates_uniqueness_of :nazwa 
 	validates_length_of :nazwa, :in => 3..5	
	
	belongs_to :type
	has_many :room_keys
	has_many :take_keys

end
