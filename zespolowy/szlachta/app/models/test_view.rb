# == Schema Information
#
# Table name: test_views
#
#  id              :integer          not null, primary key
#  Sala            :string(255)
#  Klucz           :string(255)
#  Pracownik       :string(255)
#  Pilot           :boolean
#  Kabel           :boolean
#  Godzin_pobrania :datetime
#  Godzina_oddania :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class TestView < ActiveRecord::Base
end
