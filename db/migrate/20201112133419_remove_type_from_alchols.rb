class RemoveTypeFromAlchols < ActiveRecord::Migration[5.1]
  def change
    remove_column :alchols, :type, :string
  end
end
