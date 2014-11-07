class AddUserIdToBunks < ActiveRecord::Migration
  def change
    add_column :bunks, :user_id, :integer
    add_index :bunks, :user_id
  end
end
