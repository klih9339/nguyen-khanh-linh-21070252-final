class CreateTransactionReports < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_reports do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
