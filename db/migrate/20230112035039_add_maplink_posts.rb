class AddMaplinkPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :maplink, :text
  end
end
