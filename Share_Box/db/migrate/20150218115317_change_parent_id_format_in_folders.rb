class ChangeParentIdFormatInFolders < ActiveRecord::Migration
  def up
    change_column :folders, :parent_id, :integer
  end

  def down
    change_column :folders, :parent_id, :string
  end
end
