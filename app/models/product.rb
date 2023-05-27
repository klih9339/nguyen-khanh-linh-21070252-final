class Product < ApplicationRecord
  belongs_to :category
  validates_presence_of:product_name,:brand,:category
  validates_numericality_of:price
end
