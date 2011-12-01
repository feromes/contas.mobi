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

ActiveRecord::Schema.define(:version => 20111201165858) do

  create_table "conta", :force => true do |t|
    t.string   "nome"
    t.boolean  "debito"
    t.text     "descricao"
    t.text     "detalhes"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conta", ["user_id"], :name => "index_conta_on_user_id"

  create_table "razao", :force => true do |t|
    t.date     "data_do_lancamento"
    t.decimal  "valor"
    t.integer  "conta_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "razao", ["conta_id"], :name => "index_razao_on_conta_id"
  add_index "razao", ["user_id"], :name => "index_razao_on_user_id"

end
