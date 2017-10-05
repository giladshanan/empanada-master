class CreateEmpanadas < ActiveRecord::Migration
  def change
    create_table :empanadas do |t|
      t.integer :empanada_type_id
      t.integer :order_id
      t.timestamps
    end
  end
end
