class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :nome
      t.string :matricula
      t.string :situacao
      t.string :titulacao
      t.string :email
      t.string :imageurl

      t.timestamps
    end
  end
end
