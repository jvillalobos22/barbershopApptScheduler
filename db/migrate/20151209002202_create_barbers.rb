class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image_filename
      t.text :bio
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
