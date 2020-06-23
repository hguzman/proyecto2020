class CreateJoinTableCarrosColores < ActiveRecord::Migration[5.1]
  def change
    create_join_table :carros, :colores do |t|
      t.index [:carro_id, :color_id]
    end
  end
end
