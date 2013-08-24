class Curso < ActiveRecord::Base
  attr_accessible :duracao, :ementa, :graduacao, :matrizcurricular, :nome, :referencia, :regime
end
