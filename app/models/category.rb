class Category < ApplicationRecord
	has_many :products
	validates_presence_of:category_name
	validates_uniqueness_of:category_name
end
