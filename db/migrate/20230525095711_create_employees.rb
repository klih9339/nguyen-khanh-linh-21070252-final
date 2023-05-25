class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :employee_address
      t.date :employee_dob
      t.string :employee_position
      t.float :employee_salary

      t.timestamps
    end
  end
end
