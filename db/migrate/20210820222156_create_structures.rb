class CreateStructures < ActiveRecord::Migration[6.0]
  def change
    create_table :structures do |t|
      t.references :block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
