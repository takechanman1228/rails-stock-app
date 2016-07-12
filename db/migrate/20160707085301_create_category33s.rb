class CreateCategory33s < ActiveRecord::Migration
  def change
    create_table :category33s do |t|
      t.integer :code
      t.string :category33
      t.has_many :companies

      t.timestamps null: false
    end
  end
end
