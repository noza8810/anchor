class CreateAlchols < ActiveRecord::Migration[5.1]
  def change
    create_table :alchols do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
