class Nota < ActiveRecord::Base
  belongs_to :diarioaluno
  attr_accessible :avaliacao, :nota, :diarioaluno_id
end
