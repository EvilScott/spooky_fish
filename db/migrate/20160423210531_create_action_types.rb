class CreateActionTypes < ActiveRecord::Migration
  def change
    create_table :action_types do |t|
      t.string :action_name

      t.timestamps null: false
    end
  end
end
