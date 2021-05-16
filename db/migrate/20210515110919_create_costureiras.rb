class CreateCostureiras < ActiveRecord::Migration[5.2]
  def change
    create_table :costureiras do |t|
      t.string :nome
      t.integer :idade
      t.string :sexo
      t.integer :maquina_costura_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
