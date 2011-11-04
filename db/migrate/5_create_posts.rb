class CreatePosts < ActiveRecord::Migration

  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.references :citizen
      t.references :solution
      t.timestamps
    end
    add_index :posts, :citizen_id
    add_index :posts, :solution_id
  end
end
