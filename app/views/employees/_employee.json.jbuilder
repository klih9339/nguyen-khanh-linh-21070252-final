json.extract! employee, :id, :employee_name, :employee_address, :employee_dob, :employee_position, :employee_salary, :created_at, :updated_at
json.url employee_url(employee, format: :json)
