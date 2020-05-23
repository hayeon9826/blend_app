class AddNameToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :name, :string
    add_reference :orders, :product, null: true
  end
end
