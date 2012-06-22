class AddTipoActividadIdToActividad < ActiveRecord::Migration
  def change
    add_column :actividads, :tipo_actividad_id, :integer

  end
end
