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

ActiveRecord::Schema.define(:version => 20130925222859) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "pai"
    t.string   "mae"
    t.string   "cpf"
    t.string   "rg"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "email"
    t.string   "imageurl"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "imageurl_file_name"
    t.string   "imageurl_content_type"
    t.integer  "imageurl_file_size"
    t.datetime "imageurl_updated_at"
  end

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

  create_table "diarioalunos", :force => true do |t|
    t.string   "mediafinal"
    t.string   "frequenciafinal"
    t.integer  "diario_id"
    t.integer  "matriculado_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "diarioalunos", ["diario_id"], :name => "index_diarioalunos_on_diario_id"
  add_index "diarioalunos", ["matriculado_id"], :name => "index_diarioalunos_on_matriculado_id"

  create_table "diarios", :force => true do |t|
    t.string   "ano"
    t.string   "semestre"
    t.string   "turno"
    t.string   "pasta"
    t.integer  "grade_id"
    t.integer  "docente_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "diarios", ["docente_id"], :name => "index_diarios_on_docente_id"
  add_index "diarios", ["grade_id"], :name => "index_diarios_on_grade_id"

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

  create_table "docentes", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "situacao"
    t.string   "titulacao"
    t.string   "email"
    t.string   "imageurl"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "imageurl_file_name"
    t.string   "imageurl_content_type"
    t.integer  "imageurl_file_size"
    t.datetime "imageurl_updated_at"
  end

  create_table "frequencias", :force => true do |t|
    t.string   "frequencia"
    t.date     "data"
    t.integer  "diarioaluno_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "frequencias", ["diarioaluno_id"], :name => "index_frequencias_on_diarioaluno_id"

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

  create_table "matriculados", :force => true do |t|
    t.string   "periodo"
    t.string   "estadomatricula"
    t.integer  "aluno_id"
    t.integer  "curso_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "matriculados", ["aluno_id"], :name => "index_matriculados_on_aluno_id"
  add_index "matriculados", ["curso_id"], :name => "index_matriculados_on_curso_id"

  create_table "notas", :force => true do |t|
    t.string   "nota"
    t.string   "avaliacao"
    t.integer  "diarioaluno_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "notas", ["diarioaluno_id"], :name => "index_notas_on_diarioaluno_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :null => false
    t.string   "encrypted_password",                    :null => false
    t.string   "username",                              :null => false
    t.string   "role",                                  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0, :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
