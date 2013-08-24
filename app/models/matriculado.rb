class Matriculado < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :curso
  attr_accessible :periodo, :estadomatricula, :aluno_id, :curso_id
end
