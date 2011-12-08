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

ActiveRecord::Schema.define(:version => 20111208162534) do

  create_table "conta", :force => true do |t|
    t.string   "nome"
    t.boolean  "debito"
    t.text     "descricao"
    t.text     "detalhes"
    t.integer  "usuario_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  add_index "conta", ["usuario_id"], :name => "index_conta_on_user_id"

  create_table "razao", :force => true do |t|
    t.date     "data_do_lancamento"
    t.decimal  "valor"
    t.integer  "conta_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "razao", ["conta_id"], :name => "index_razao_on_conta_id"
  add_index "razao", ["usuario_id"], :name => "index_razao_on_user_id"

  create_table "usuario", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuario", ["authentication_token"], :name => "index_usuario_on_authentication_token", :unique => true
  add_index "usuario", ["confirmation_token"], :name => "index_usuario_on_confirmation_token", :unique => true
  add_index "usuario", ["email"], :name => "index_usuario_on_email", :unique => true
  add_index "usuario", ["reset_password_token"], :name => "index_usuario_on_reset_password_token", :unique => true
  add_index "usuario", ["unlock_token"], :name => "index_usuario_on_unlock_token", :unique => true

end
