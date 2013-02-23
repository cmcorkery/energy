class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :elec
      t.decimal :gas
      t.decimal :biomass
      t.integer :usage_id

      t.timestamps
    end
  end
end
