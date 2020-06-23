class CreateColores < ActiveRecord::Migration[5.1]
  def change
    create_table :colores do |t|
      t.string :color

      t.timestamps
    end
  end
end
