class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :reason_type

      t.timestamps null: false
    end
  end
end
