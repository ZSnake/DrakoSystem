class AddPuntuacionToVisitador < ActiveRecord::Migration
  def change
    add_column :visitadors, :puntuacion, :integer

  end
end
