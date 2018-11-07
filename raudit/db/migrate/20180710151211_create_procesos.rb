class CreateProcesos < ActiveRecord::Migration[5.2]
  def change
    create_table :procesos do |t|
      t.string :nombre
      t.text :objetivo
      t.string :tipo_objetivo
      t.string :tipo
      t.string :centro
      t.string :estado

      t.timestamps
    end
  end
end
