class Renamecolumnincustomer < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers, :first_nam, :first_name
  end
end
