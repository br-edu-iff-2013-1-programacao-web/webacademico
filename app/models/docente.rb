class Docente < ActiveRecord::Base
  attr_accessible :email, :imageurl, :matricula, :nome, :situacao, :titulacao
end
