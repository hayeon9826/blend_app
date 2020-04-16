class AddCategoryToLecture < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :category, :integer
    add_column :lectures, :image_link, :string
  end
end
