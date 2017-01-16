class AddColumnToVendor < ActiveRecord::Migration[5.0]
  def change
    add_column :vendors, :phone, :integer
  end
end
