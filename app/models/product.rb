class Product < ApplicationRecord
  belongs_to :category
  validates_numericality_of:price
end
