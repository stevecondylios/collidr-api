class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.string :name
      t.string :key
      t.string :role

      t.timestamps
    end
  end
end
