class CreateMatriculados < ActiveRecord::Migration
  def change
    create_table :matriculados do |t|
      t.string :periodo
      t.string :estadomatricula
      t.references :aluno
      t.references :curso

      t.timestamps
    end
    add_index :matriculados, :aluno_id
    add_index :matriculados, :curso_id
  end
end
