class AddIndexIntoFolder < ActiveRecord::Migration
  def change
    add_index :folders, :parent_id
    add_index :folders, :user_id
  end
end
