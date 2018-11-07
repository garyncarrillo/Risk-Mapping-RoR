class CreateCentros < ActiveRecord::Migration[5.2]
  def change
    create_table :centros do |t|
      t.string :nombre
      t.string :estados_id

      t.timestamps
    end
  end
end
