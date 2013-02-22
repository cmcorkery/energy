class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.datetime :month
      t.decimal :data1
      t.decimal :data2

      t.timestamps
    end
  end
end
