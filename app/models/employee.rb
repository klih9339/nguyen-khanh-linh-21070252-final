class Employee < ApplicationRecord
	has_many:orders
	validates_presence_of:employee_name, :employee_dob,:employee_position
	
end
