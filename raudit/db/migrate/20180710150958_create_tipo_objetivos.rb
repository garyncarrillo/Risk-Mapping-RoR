class CreateTipoObjetivos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_objetivos do |t|
      t.string :descripcion
      t.string :estado

      t.timestamps
    end
  end
end
