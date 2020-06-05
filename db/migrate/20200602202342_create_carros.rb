class CreateCarros < ActiveRecord::Migration[5.1]
  def change
    create_table :carros do |t|
      t.string :placa
      t.integer :modelo
      t.string :color
      t.boolean :estado

      t.timestamps
    end
  end
end
