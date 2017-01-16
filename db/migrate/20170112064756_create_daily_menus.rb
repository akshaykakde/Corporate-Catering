class CreateDailyMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_menus do |t|
      t.date :date

      t.timestamps
    end
  end
end
