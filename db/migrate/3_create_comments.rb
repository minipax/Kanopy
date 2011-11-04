class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :problem

      t.timestamps
    end
    add_index :comments, :problem_id
  end
end
