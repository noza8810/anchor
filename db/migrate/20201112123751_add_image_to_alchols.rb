class AddImageToAlchols < ActiveRecord::Migration[5.1]
  def change
    add_column :alchols, :image, :string
  end
end
