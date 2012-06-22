class Visitador < ActiveRecord::Base
    has_and_belongs_to_many :actividads
    validates :numerovisitador, :nombre, :presence => true
    validates :numerovisitador, :uniqueness => true

    def puntos
        punt = 0
        self.actividads.all.each do |act|
            punt += act.puntuacion
        end
        self.puntuacion = punt
        punt
    end

  
end
