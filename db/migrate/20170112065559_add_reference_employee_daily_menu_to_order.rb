class AddReferenceEmployeeDailyMenuToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders,:dailymenu,foreign_key:true,index:true
    add_reference :orders,:employee,foreign_key:true,index:true
  end
end
