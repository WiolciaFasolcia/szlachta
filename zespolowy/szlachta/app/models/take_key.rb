class TakeKey < ActiveRecord::Base


	 #validates_presence_of :nazwa_sali, :rodzaj_klucza, :osoba_pobierajaca
	#validate :validate_godzina_oddania
	#validate :validate_godzina_pobrania
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
