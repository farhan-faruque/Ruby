class ChangeColumnName < ActiveRecord::Migration
  def up
    rename_column :products, :release_date, :release_on
    change_column :products, :release_on, :date
  end

  def down
    rename_column :products, :release_on, :release_date
    change_column :products, :release_date, :datetime
  end
end
