class CreateFlatfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :flatfiles do |t|
      t.string :package_names
      t.string :function_names

      t.timestamps
    end
  end
end
