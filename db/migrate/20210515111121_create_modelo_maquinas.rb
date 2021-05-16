class CreateModeloMaquinas < ActiveRecord::Migration[5.2]
  def change
    create_table :modelo_maquinas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
