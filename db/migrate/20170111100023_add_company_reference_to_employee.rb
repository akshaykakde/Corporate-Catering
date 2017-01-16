class AddCompanyReferenceToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees,:company,foreign_key:true,index:true
  end
end
