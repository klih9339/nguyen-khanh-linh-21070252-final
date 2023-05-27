class Order < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  belongs_to :employee
  has_many:transaction_reports

end
