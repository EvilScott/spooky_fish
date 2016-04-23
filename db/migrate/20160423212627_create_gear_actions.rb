class CreateGearActions < ActiveRecord::Migration
  def change
    create_table :gear_actions do |t|
      t.references :action_type, index: true, foreign_key: true
      t.string :owner
      t.references :net_type, index: true, foreign_key: true
      t.references :region, index: true, foreign_key: true
      t.references :reason, index: true, foreign_key: true
      t.references :credit, index: true, foreign_key: true
      t.string :disposal_receipt
      t.boolean :unconfirmed_disposal

      t.timestamps null: false
    end
  end
end
