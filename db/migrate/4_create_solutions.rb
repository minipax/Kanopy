class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :name
      t.integer :comment_id
      t.text :description

      t.timestamps
    end
    add_index :solutions, :comment_id
  end
end
