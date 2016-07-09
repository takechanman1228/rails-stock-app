class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to :market
      t.belongs_to :category17
      t.belongs_to :category33
      t.belongs_to :scale

      t.integer :code
      t.string :name
      t.integer :market_id
      t.integer :category33_id
      t.integer :category17_id
      t.integer :scale_id

      t.timestamps null: false
    end
  end
end
