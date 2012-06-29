class PuntuacionesActividad < ActiveRecord::Base
    belongs_to :visitador
    belongs_to :actividad
    
    validates :puntuacion, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}

    def to_label 
       self.visitador.nombre
    end
end
