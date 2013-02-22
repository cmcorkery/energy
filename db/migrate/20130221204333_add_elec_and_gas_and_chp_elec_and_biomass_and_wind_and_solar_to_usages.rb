class AddElecAndGasAndChpElecAndBiomassAndWindAndSolarToUsages < ActiveRecord::Migration
  def change
    add_column :usages, :elec, :decimal

    add_column :usages, :gas, :decimal

    add_column :usages, :chp_elec, :decimal

    add_column :usages, :biomass, :decimal

    add_column :usages, :wind, :decimal

    add_column :usages, :solar, :decimal

  end
end
