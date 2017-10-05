class CreateEmpanadaTypes < ActiveRecord::Migration
  def change
    create_table :empanada_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
