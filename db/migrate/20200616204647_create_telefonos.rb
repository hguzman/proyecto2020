class CreateTelefonos < ActiveRecord::Migration[5.1]
  def change
    create_table :telefonos do |t|
      t.string :telefono
      t.boolean :estado
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
