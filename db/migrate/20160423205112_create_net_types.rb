class CreateNetTypes < ActiveRecord::Migration
  def change
    create_table :net_types do |t|
      t.string :net_code
      t.float :mesh_size
      t.float :twine_size
      t.integer :strands
      t.string :net_construction
      t.string :twine_type
      t.string :twine_material
      t.string :net_use
      t.string :origin

      t.timestamps null: false
    end
  end
end
