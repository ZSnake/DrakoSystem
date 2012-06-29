class Actividad < ActiveRecord::Base
    has_and_belongs_to_many :visitadors
    belongs_to :tipo_actividad
    validates :nombre, :puntuacion, :presence => true
    validates :puntuacion, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 10}
    has_many :puntuaciones_actividads 
    accepts_nested_attributes_for :puntuaciones_actividads
    def self.text_search(query)
        if query.present?
            if where("nombre @@ :q", q: query) != []
              where("nombre @@ :q", q: query)
            else 
              if isNumber?(query) && where("puntuacion = :q", q: query) != [] 
                where("puntuacion = :q", q: query)
              else 
                if isDate?(query) && where("fecha = :q", q: query) != [] 
                where("fecha = :q", q: query)
                else
                  []
                end
              end
        end
        else
            all
        end
    end

    def self.isNumber?(s)
        s.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true 
    end

    def self.isDate?(s)
      s.to_s.match(/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/) == nil ? false : true
   end

end
