class Diarioaluno < ActiveRecord::Base
  belongs_to :diario
  belongs_to :matriculado
  attr_accessible :frequenciafinal, :mediafinal, :diario_id, :matriculado_id
end
