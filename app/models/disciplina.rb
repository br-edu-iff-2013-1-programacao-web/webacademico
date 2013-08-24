class Disciplina < ActiveRecord::Base
  attr_accessible :cargahoraria, :credito, :ementa, :nome, :objetivo, :prerequisito, :referencia
end
