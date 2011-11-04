class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.references :citizen
      t.references :kanopy

      t.timestamps
    end
    add_index :problems, :citizen_id
    add_index :problems, :kanopy_id
  end
end
