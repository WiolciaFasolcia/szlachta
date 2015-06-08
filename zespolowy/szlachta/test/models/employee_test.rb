# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  imie       :string(255)
#  nazwisko   :string(255)
#  tytul      :string(255)
#  telefon    :string(9)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
