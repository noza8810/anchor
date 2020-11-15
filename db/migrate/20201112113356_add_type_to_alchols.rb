class AddTypeToAlchols < ActiveRecord::Migration[5.1]
  def change
    add_column :alchols, :type, :string
    self.inheritance_column = :_type_disabled 
  end
end
