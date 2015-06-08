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

require 'test_helper'

class TakeKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
