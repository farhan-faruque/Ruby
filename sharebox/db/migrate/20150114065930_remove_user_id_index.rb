class RemoveUserIdIndex < ActiveRecord::Migration
  def up
    remove_index :assets, :user_id
  end

  def down
    remove_index :assets, :user_id
  end
end
