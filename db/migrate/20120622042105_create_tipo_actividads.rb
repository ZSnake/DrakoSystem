class CreateTipoActividads < ActiveRecord::Migration
  def change
    create_table :tipo_actividads do |t|
      t.string :Nombre
      t.string :Observaciones

      t.timestamps
    end
  end
end
