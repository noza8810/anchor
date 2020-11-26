class AddPlacephotoToAlchols < ActiveRecord::Migration[5.1]
  def change
    add_column :alchols, :placephoto, :string
  end
end
