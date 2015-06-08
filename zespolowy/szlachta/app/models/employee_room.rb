# == Schema Information
#
# Table name: employee_rooms
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  room_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EmployeeRoom < ActiveRecord::Base
end
