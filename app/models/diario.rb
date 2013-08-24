class Diario < ActiveRecord::Base
  belongs_to :grade
  belongs_to :docente
  attr_accessible :ano, :semestre, :turno, :pasta, :grade_id, :docente_id
end
