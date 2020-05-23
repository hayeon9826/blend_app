class ChangePointThype < ActiveRecord::Migration[5.2]
  def change
    remove_column :points, :point, :string
    add_column :points, :point, :integer, default: 1000
  end
end
