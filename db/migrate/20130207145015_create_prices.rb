class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :amount

      t.timestamps
    end
    add_column :prices, :usage_id, :integer
  end
end
