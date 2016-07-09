class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :code
      t.string :market
      # t.has_many :companies

      t.timestamps null: false
    end
  end
end
