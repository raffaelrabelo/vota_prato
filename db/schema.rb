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

ActiveRecord::Schema.define(:version => 20120407165535) do

  create_table "clientes", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.integer  "idade"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "pratos", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "pratos_restaurantes", :id => false, :force => true do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
    t.float    "nota",           :limit => 24
    t.float    "valor_gasto",    :limit => 24
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "qualificacoes", ["cliente_id"], :name => "index_qualificacoes_on_cliente_id"
  add_index "qualificacoes", ["restaurante_id"], :name => "index_qualificacoes_on_restaurante_id"

  create_table "receita", :force => true do |t|
    t.integer  "prato_id"
    t.text     "conteudo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurantes", :force => true do |t|
    t.string   "nome",          :limit => 80
    t.string   "endereco"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "especialidade", :limit => 40
  end

end
