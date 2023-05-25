class TransactionReport < ApplicationRecord
  belongs_to :customer
  belongs_to :order
  belongs_to :product
  belongs_to :payment
end
