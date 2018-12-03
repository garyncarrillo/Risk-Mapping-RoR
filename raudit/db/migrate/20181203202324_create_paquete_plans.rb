class CreatePaquetePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :paquete_plans do |t|
      t.string :nombre
      t.string :ano
      t.text :alcance

      t.timestamps
    end
  end
end
