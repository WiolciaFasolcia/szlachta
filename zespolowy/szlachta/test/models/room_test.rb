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

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
