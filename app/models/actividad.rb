class Actividad < ActiveRecord::Base
    has_and_belongs_to_many :visitadors
    belongs_to :tipo_actividad
    validates :Nombre, :presence => true
    
    searchable do
        text :Nombre, :getTipo
        date :Fecha
    end

    def getTipo
        tipo_actividad.Nombre
    end
end
