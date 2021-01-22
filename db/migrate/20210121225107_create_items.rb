class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :price
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
