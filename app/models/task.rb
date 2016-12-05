class Task < ActiveRecord::Base
	belongs_to :job
	belongs_to :tenant
	belongs_to :room
	belongs_to :property_owner
	has_many :messages
end
