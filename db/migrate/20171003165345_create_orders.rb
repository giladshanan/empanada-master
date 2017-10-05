class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :eater_id
      t.integer :total
      t.boolean :paid
      t.string :payment_type
      t.date :delivery_date
      t.timestamps
    end
  end
end
