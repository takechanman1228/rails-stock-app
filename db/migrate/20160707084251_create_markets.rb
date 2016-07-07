class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :code
      t.string :market

      t.timestamps null: false
    end
  end
end
