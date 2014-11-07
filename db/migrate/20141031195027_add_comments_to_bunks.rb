class AddCommentsToBunks < ActiveRecord::Migration
  def change
    add_column :bunks, :comments, :text
  end
end
