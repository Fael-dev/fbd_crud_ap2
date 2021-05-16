class CreateMaquinaCosturas < ActiveRecord::Migration[5.2]
  def change
    create_table :maquina_costuras do |t|
      t.string :fabricante
      t.integer :modelo_maquina_id

      t.timestamps
    end
  end
end
