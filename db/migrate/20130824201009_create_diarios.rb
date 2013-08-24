class CreateDiarios < ActiveRecord::Migration
  def change
    create_table :diarios do |t|
      t.string :ano
      t.string :semestre
      t.string :turno
      t.string :pasta
      t.references :grade
      t.references :docente

      t.timestamps
    end
    add_index :diarios, :grade_id
    add_index :diarios, :docente_id
  end
end
