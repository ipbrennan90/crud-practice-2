class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :make
      t.string :model
      t.datetime :year

      t.timestamps null: false
    end
  end
end
