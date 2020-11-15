class AddCharacterToAlchols < ActiveRecord::Migration[5.1]
  def change
    add_column :alchols, :character, :text
  end
end
