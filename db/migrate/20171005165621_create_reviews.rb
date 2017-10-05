class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :body
      t.integer :empanada_type_id
      t.timestamps
    end
  end
end
