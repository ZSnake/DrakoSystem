class AddPermisoToUser < ActiveRecord::Migration
  def change
    add_column :users, :permiso, :boolean

  end
end
