class CreateKanopies < ActiveRecord::Migration
  def change
    create_table :kanopies do |t|
      t.string :name
      t.integer :kanopy_id

      t.timestamps
    end
    add_index :kanopies, :kanopy_id
  end
end
