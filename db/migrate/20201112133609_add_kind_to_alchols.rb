class AddKindToAlchols < ActiveRecord::Migration[5.1]
  def change
    add_column :alchols, :kind, :string
  end
end
