class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :address
      t.integer :price
      t.integer :donators
      t.integer :student

      t.timestamps
    end
  end
end
