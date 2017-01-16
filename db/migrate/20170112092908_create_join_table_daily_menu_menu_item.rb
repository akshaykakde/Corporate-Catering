class CreateJoinTableDailyMenuMenuItem < ActiveRecord::Migration[5.0]
  def change
    create_join_table :daily_menus, :menu_items do |t|
       t.index [:daily_menu_id, :menu_item_id]
       t.index [:menu_item_id, :daily_menu_id]
    end
  end
end
