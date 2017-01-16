class DropTableMenuItemsDailyMenu < ActiveRecord::Migration[5.0]
  def change
    drop_table(:daily_menus_menu_items)
  end
end
