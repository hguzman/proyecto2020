class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.integer :codigo
      t.string :nombre
      t.integer :edad
      t.boolean :estado
      t.text :descripcion

      t.timestamps
    end
  end
end
