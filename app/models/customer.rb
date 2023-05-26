class Customer < ApplicationRecord
	has_many :orders
	has_many :payments
	validates_presence_of:customer_name, :customer_phone
	validates_uniqueness_of:customer_phone
end
