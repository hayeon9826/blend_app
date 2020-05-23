class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :status
      t.integer :total
      t.string :zipcode
      t.string :address1
      t.string :address2
      t.datetime :paid_at

      t.timestamps
    end
  end
end
