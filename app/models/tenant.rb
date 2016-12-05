class Tenant < ActiveRecord::Base
	belongs_to :room
	belongs_to :building
	has_many :tasks
	has_many :messages
end
