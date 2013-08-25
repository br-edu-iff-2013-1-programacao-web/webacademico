class CreateDiarioalunos < ActiveRecord::Migration
  def change
    create_table :diarioalunos do |t|
      t.string :mediafinal
      t.string :frequenciafinal
      t.references :diario
      t.references :matriculado

      t.timestamps
    end
    add_index :diarioalunos, :diario_id
    add_index :diarioalunos, :matriculado_id
  end
end
