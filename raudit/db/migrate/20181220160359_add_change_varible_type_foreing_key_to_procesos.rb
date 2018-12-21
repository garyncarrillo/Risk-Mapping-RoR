class AddChangeVaribleTypeForeingKeyToProcesos < ActiveRecord::Migration[5.2]
  def up
    change_table :procesos do |t|
      #nuevo tipo de variable
      t.change :tipo_objetivo, :bigint
      t.change :tipo, :bigint
      t.change :centro, :bigint
      t.change :estado, :bigint
    end
  end

  def down
    change_table :procesos do |t|
      #anterior tipo de variable
      t.change :tipo_objetivo, :string
      t.change :tipo, :string
      t.change :centro, :string
      t.change :estado, :string
    end
  end
end
