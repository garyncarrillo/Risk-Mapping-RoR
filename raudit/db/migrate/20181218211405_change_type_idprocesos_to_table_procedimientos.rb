class ChangeTypeIdprocesosToTableProcedimientos < ActiveRecord::Migration[5.2]
  def up
    change_table :procedimientos do |t|
      #nuevo tipo de cambio
      t.change :idprocesos, :bigint
    end
  end

  def down
    change_table :procedimientos do |t|
      #anterior tipo de cambio
      t.change :idprocesos, :string
    end
  end
end
