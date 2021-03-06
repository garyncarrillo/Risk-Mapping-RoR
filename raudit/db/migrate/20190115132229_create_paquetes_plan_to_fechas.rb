class CreatePaquetesPlanToFechas < ActiveRecord::Migration[5.2]
  def change
    create_table :paquetes_plan_to_fechas do |t|
      t.bigint :idpaquete
      t.string :responsable
      t.date :fecha_plan_i
      t.date :fecha_plan_f
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :dias
      t.text :comentarios
      t.bigint :estado

      t.timestamps
    end
  end
end
