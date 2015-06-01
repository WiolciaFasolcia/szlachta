class Type < ActiveRecord::Base
	 has_many :rooms

	 validates_uniqueness_of :name
end
