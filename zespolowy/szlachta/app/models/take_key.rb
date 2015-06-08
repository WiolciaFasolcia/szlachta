# == Schema Information
#
# Table name: take_keys
#
#  id                :integer          not null, primary key
#  nazwa_sali        :string(255)
#  rodzaj_klucza     :string(255)
#  osoba_pobierajaca :string(255)
#  godzina_pobrania  :datetime
#  godzina_oddania   :datetime
#  room_id           :integer
#  room_key_id       :integer
#  employee_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class TakeKey < ActiveRecord::Base


	# validates_presence_of :nazwa_sali, :rodzaj_klucza, :osoba_pobierajaca
	#validate :validate_godzina_oddania
	# validate :validate_godzina_pobrania
	belongs_to :room
 	belongs_to :room_key
 	belongs_to :employee
 private



 def validate_godzina_oddania
 errors.add(:godzina_oddania, "jest wcześniejsza od obecnej!") unless self.godzina_oddania >= Date.today
 end

 def validate_godzina_pobrania
 errors.add(:godzina_pobrania, " klucza jest późniejszy niż czas zwrotu!") unless self.godzina_pobrania < self.godzina_oddania
 end

end
