# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130824174647) do

  create_table "cursos", :force => true do |t|
    t.string   "graduacao"
    t.string   "nome"
    t.string   "duracao"
    t.string   "matrizcurricular"
    t.string   "regime"
    t.string   "ementa"
    t.string   "referencia"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.string   "cargahoraria"
    t.string   "ementa"
    t.string   "objetivo"
    t.string   "prerequisito"
    t.string   "credito"
    t.string   "referencia"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "grades", :force => true do |t|
    t.string   "periodo"
    t.string   "referencia"
    t.integer  "disciplina_id"
    t.integer  "curso_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "grades", ["curso_id"], :name => "index_grades_on_curso_id"
  add_index "grades", ["disciplina_id"], :name => "index_grades_on_disciplina_id"

end
