class AddElecAndGasAndChpElecAndBiomassAndWindAndSolarToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :elec, :decimal

    add_column :prices, :gas, :decimal

    add_column :prices, :chp_elec, :decimal

    add_column :prices, :biomass, :decimal

    add_column :prices, :wind, :decimal

    add_column :prices, :solar, :decimal

  end
end
