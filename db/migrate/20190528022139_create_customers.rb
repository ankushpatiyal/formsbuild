class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :first_nam
      t.string :last_name
      t.string :gender
      t.boolean :enable

      t.timestamps
    end
  end
end
