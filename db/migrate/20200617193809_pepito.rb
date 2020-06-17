class Pepito < ActiveRecord::Migration[5.1]
  def change
    add_reference :carros, :persona, foreign_key: true
    add_column :carros, :vin, :string
    remove_column :carros, :estado, :boolean
  end
end
