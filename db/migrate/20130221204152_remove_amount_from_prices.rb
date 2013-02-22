class RemoveAmountFromPrices < ActiveRecord::Migration
  def up
    remove_column :prices, :amount
      end

  def down
    add_column :prices, :amount, :decimal
  end
end
