class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :price
      t.boolean :veg

      t.timestamps
    end
  end
end
