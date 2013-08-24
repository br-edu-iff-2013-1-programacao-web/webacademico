class Grade < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :curso
  attr_accessible :periodo, :referencia, :disciplina_id, :curso_id
end
