class CreatePaquetePlanToProcedimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :paquete_plan_to_procedimientos do |t|
      t.string :idpaquete
      t.string :idprocedimiento

      t.timestamps
    end
  end
end
