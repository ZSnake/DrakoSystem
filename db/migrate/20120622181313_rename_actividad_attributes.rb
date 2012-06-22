class RenameActividadAttributes < ActiveRecord::Migration
  def up
    rename_column :actividads, :Nombre, :nombre
    rename_column :actividads, :Fecha, :fecha
    rename_column :actividads, :DiaHabil, :diahabil
    rename_column :visitadors, :numeroVisitador, :numerovisitador
    rename_column :visitadors, :Nombre, :nombre
    rename_column :visitadors, :Observaciones, :observaciones 
  end

  def down
  end
end
