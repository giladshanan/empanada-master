class OrderedEmpanadas < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_empanadas do |t|
      t.integer :quantity
      t.integer :empanada_type_id
      t.integer :order_id
      t.timestamps
    end
  end
end
