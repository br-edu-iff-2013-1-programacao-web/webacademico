class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :periodo
      t.string :referencia
      t.references :disciplina
      t.references :curso

      t.timestamps
    end
    add_index :grades, :disciplina_id
    add_index :grades, :curso_id
  end
end
