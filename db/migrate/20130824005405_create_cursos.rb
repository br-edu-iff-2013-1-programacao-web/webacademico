class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :graduacao
      t.string :nome
      t.string :duracao
      t.string :matrizcurricular
      t.string :regime
      t.string :ementa
      t.string :referencia

      t.timestamps
    end
  end
end
