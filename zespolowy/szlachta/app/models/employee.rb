class Employee < ActiveRecord::Base
validates_presence_of :imie, :nazwisko, :tytul, :telefon
validates_each :imie, :nazwisko do |model, attr, value| 
model.errors.add(attr, 'musi zaczynać sie z duzej litery') if value =~ /\A[a-z]/
	end
validates_uniqueness_of :email, :telefon
validates_length_of :telefon, :in => 9..9	
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
