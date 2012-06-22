class Actividad < ActiveRecord::Base
    has_and_belongs_to_many :visitadors
    belongs_to :tipo_actividad
end
