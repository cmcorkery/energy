class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.date 	:month
      t.decimal :elec
      t.decimal :gas
      t.decimal :biomass
      t.decimal :chp_elec
      t.decimal :chp_gas
      t.decimal :wind
      t.decimal :solar

      t.timestamps
    end
  end
end
