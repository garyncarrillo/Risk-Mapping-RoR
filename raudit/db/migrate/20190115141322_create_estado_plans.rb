class CreateEstadoPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :estado_plans do |t|
      t.string :descripcion
      t.bigint :idestado

      t.timestamps
    end
  end
end
