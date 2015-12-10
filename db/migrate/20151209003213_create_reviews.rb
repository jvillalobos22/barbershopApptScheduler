class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :barber, index: true, foreign_key: true
      t.string :client_name
      t.string :str
      t.integer :rating

      t.timestamps null: false
    end
  end
end
