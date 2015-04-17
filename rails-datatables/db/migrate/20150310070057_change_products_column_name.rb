class ChangeProductsColumnName < ActiveRecord::Migration
  def up
    rename_column :products, :release_on, :released_on
    change_column :products, :price, :decimal
  end

  def down
    rename_column :products, :released_on, :release_on
    change_column :products, :price, :decimal
  end
end
