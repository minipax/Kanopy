class AddPostTypeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :post_type_id, :integer
  end
end
