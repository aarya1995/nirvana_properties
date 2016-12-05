class Building < ActiveRecord::Base
	has_many :rooms
	has_many :tenants
end
