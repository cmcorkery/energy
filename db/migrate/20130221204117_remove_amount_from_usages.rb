class RemoveAmountFromUsages < ActiveRecord::Migration
  def up
    remove_column :usages, :amount
      end

  def down
    add_column :usages, :amount, :decimal
  end
end
