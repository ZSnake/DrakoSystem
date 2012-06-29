class PuntuacionesActividad < ActiveRecord::Base
    belongs_to :visitador
    belongs_to :actividad

    def to_label 
       self.visitador.nombre
    end
end
