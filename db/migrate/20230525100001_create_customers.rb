class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_phone
      t.float :customer_points

      t.timestamps
    end
  end
end
