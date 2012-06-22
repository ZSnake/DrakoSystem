class TipoActividad < ActiveRecord::Base
    has_many :actividads
    validates :Nombre, :presence => true    
end
