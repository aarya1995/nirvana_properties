class Room < ActiveRecord::Base
	belongs_to :building
	has_many :tenants
	has_many :tasks
end
