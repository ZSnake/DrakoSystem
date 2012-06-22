class CreateVisitadors < ActiveRecord::Migration
  def change
    create_table :visitadors do |t|
      t.string :numeroVisitador
      t.string :Nombre
      t.text :Observaciones

      t.timestamps
    end
  end
end
