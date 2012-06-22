class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.string :Nombre
      t.boolean :DiaHabil
      t.date :Fecha
      t.integer :tipo_id
      t.decimal :puntuacion

      t.timestamps
    end
  end
end
