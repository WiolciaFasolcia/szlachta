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

require 'test_helper'

class RoomKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
