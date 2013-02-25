class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :system
      t.string :project_type
      t.date :date_submitted
      t.string :submitted_by
      t.integer :difficulty
      t.integer :roi
      t.integer :risk
      t.integer :priority_rating
      t.string :source
      t.string :status
      t.date :date_implemented
      t.float :capital_investment
      t.float :annual_gas_savings
      t.float :annual_elec_savings
      t.float :annual_biomass_savings
      t.text :note

      t.timestamps
    end
  end
end
