class AddColToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :short_desc, :text
    add_column :products, :link, :string
    add_column :products, :delivery, :text
    add_column :products, :sub_title, :string
  end
end
