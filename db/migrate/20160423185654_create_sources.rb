class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.references :source_type, index: true, foreign_key: true, null: false
      t.string :url, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
