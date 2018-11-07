class CreateTipoProcesos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_procesos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
