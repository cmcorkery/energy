class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.decimal :amount

      t.timestamps
    end
    add_column :usages, :month, :string
  end
end
