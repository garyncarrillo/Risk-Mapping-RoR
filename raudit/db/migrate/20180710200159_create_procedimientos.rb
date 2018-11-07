class CreateProcedimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :procedimientos do |t|
      t.string :nombre
      t.text :objetivo
      t.string :tipo_objetivo
      t.string :idprocesos
      t.string :cargo_lider

      t.timestamps
    end
  end
end
