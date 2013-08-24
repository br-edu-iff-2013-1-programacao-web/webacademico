class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :cargahoraria
      t.string :ementa
      t.string :objetivo
      t.string :prerequisito
      t.string :credito
      t.string :referencia

      t.timestamps
    end
  end
end
