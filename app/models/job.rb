class Job < ActiveRecord::Base
	belongs_to :technician # or is it has_many? multiple technicians can be plumbers
	has_many :tasks
end
