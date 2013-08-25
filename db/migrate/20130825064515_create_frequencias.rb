class CreateFrequencias < ActiveRecord::Migration
  def change
    create_table :frequencias do |t|
      t.string :frequencia
      t.date :data
      t.references :diarioaluno

      t.timestamps
    end
    add_index :frequencias, :diarioaluno_id
  end
end
