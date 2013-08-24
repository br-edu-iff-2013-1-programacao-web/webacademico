class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :matricula
      t.string :pai
      t.string :mae
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :email
      t.string :imageurl

      t.timestamps
    end
  end
end
