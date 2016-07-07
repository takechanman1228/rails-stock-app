class CreateCategory17s < ActiveRecord::Migration
  def change
    create_table :category17s do |t|
      t.integer :code
      t.string :category17

      t.timestamps null: false
    end
  end
end
