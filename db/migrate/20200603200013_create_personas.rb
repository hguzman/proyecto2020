class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :cedula
      t.string :nombre
      t.integer :estatura
      t.boolean :estado
      t.string :sexo
      t.string :email

      t.timestamps
    end
  end
end
