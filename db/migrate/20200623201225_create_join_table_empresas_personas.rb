class CreateJoinTableEmpresasPersonas < ActiveRecord::Migration[5.1]
  def change
    create_join_table :empresas, :personas do |t|
      t.index [:empresa_id, :persona_id]
    end
  end
end
