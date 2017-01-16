class DropTableJoin < ActiveRecord::Migration[5.0]
  def change
    drop_table(:join_daily_menu_menu_items)
  end
end
