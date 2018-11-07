class CreateRiesgos < ActiveRecord::Migration[5.2]
  def change
    create_table :riesgos do |t|
      t.string :idprodimientos
      t.text :descripcion
      t.text :causa
      t.text :efecto
      t.text :r_categoria
      t.float :nivel_riesgo_inherente
      t.boolean :f_natural
      t.boolean :f_humano
      t.boolean :f_proceso
      t.boolean :f_tecnologico
      t.boolean :f_otros

      t.timestamps
    end
  end
end
