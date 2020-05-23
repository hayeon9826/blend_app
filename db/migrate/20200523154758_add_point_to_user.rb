class AddPointToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :donation_total, :integer, default: 0
  end
end
