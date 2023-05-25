class Order < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  has_many :transaction_reports
end
