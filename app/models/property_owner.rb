class PropertyOwner < ActiveRecord::Base
	has_many :tasks
	has_many :messages
end
