class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.string :nota
      t.string :avaliacao
      t.references :diarioaluno

      t.timestamps
    end
    add_index :notas, :diarioaluno_id
  end
end
