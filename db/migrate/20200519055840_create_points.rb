class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.references :user, foreign_key: true
      t.string :point, default: 1000

      t.timestamps
    end
  end
end
