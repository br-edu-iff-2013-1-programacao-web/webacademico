class Frequencia < ActiveRecord::Base
  belongs_to :diarioaluno
  attr_accessible :data, :frequencia, :diarioaluno_id
end
