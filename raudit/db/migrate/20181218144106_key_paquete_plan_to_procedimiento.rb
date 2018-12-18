class KeyPaquetePlanToProcedimiento < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :paquete_plan_to_procedimientos, :procedimientos, column: :idprocedimiento
  	add_foreign_key :paquete_plan_to_procedimientos, :paquete_plans, column: :idpaquete
  end
end
