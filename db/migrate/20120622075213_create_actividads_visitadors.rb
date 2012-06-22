class CreateActividadsVisitadors < ActiveRecord::Migration
  def up
    create_table :actividads_visitadors do |t|
      t.integer :actividad_id
      t.integer :visitador_id
    end
  end

  def down
  end
end
