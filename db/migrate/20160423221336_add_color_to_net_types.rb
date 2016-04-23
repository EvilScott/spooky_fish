class AddColorToNetTypes < ActiveRecord::Migration
  def change
    add_column :net_types, :color, :string
  end
end
