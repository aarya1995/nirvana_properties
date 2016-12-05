class Message < ActiveRecord::Base
	belongs_to :task
	has_many :technicians
	has_many :tenants
	has_many :property_owners
end
