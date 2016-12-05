class Technician < ActiveRecord::Base
	has_many :jobs
	has_many :messages
end
