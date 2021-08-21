class AddCodeToStructures < ActiveRecord::Migration[6.0]
  def change
    add_column :structures, :code, :text
  end
end
