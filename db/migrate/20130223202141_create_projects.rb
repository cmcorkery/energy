class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :system
      t.date :date_submitted
      t.string :submitted_by
      t.integer :difficulty
      t.integer :roi
      t.integer :risk
      t.integer :priority_rating
      t.string :source
      t.text :note
      t.string :status
      t.date :date_implemented
      t.float :capital_investment
      t.float :annual_gas_savings
      t.float :annual_elec_savings
      t.float :annual_biomass_savings

      t.timestamps
    end
  end
end
