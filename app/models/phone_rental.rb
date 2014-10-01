class PhoneRental < ActiveRecord::Base
	belongs_to :user
	has_one :phone
end
