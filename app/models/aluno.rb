class Aluno < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cpf, :email, :endereco, :imageurl, :mae, :matricula, :nome, :pai, :rg, :uf
end
