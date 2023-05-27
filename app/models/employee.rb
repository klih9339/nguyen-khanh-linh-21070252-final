class Employee < ApplicationRecord
	has_many:orders
	validates_presence_of:employee_name, :employee_dob,:employee_position
	validates_numericality_of:employee_salary
end
