class Payment < ApplicationRecord
	validates_presence_of:payment_method, :date
	
end
