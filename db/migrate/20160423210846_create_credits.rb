class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :credit_code

      t.timestamps null: false
    end
  end
end
