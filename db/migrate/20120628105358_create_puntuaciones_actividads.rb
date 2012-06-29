class CreatePuntuacionesActividads < ActiveRecord::Migration
  def change
    create_table :puntuaciones_actividads do |t|
      t.integer :actividad_id
      t.integer :visitador_id
      t.integer :puntuacion

      t.timestamps
    end
  end
end
