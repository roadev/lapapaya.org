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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150921204409) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "canvas", force: true do |t|
    t.string   "cliente1"
    t.string   "canal1"
    t.string   "problema1"
    t.string   "cliente2"
    t.string   "canal2"
    t.string   "problema2"
    t.string   "cliente3"
    t.string   "canal3"
    t.string   "problema3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_financiero_costos", force: true do |t|
    t.integer  "personal"
    t.integer  "alquiler"
    t.integer  "costo_produccion"
    t.integer  "costo_comercializacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_financiero_ingresos", force: true do |t|
    t.integer  "valor_venta_producto1"
    t.integer  "valor_venta_producto2"
    t.integer  "valor_venta_producto3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_lado_derechos", force: true do |t|
    t.string   "propuesta_de_valor"
    t.string   "tratamiento_con_el_cliente"
    t.string   "canales"
    t.string   "segmento_cliente1"
    t.string   "segmento_cliente22"
    t.string   "segmento_cliente3"
    t.string   "stakeholder1"
    t.string   "stakeholder2"
    t.string   "stakeholder3"
    t.string   "indicador_clave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "canvas_lado_izquierdos", force: true do |t|
    t.string   "sector"
    t.string   "problema_general"
    t.string   "solucion"
    t.string   "producto1"
    t.string   "producto2"
    t.string   "producto3"
    t.string   "actividad_clave1"
    t.string   "actividad_clave2"
    t.string   "actividad_clave3"
    t.string   "recurso_clave1"
    t.string   "recurso_clave2"
    t.string   "recurso_clave3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "complices", force: true do |t|
    t.integer  "dream_id"
    t.string   "tags"
    t.text     "reason"
    t.text     "giving"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "complices", ["user_id"], name: "index_complices_on_user_id"

  create_table "dreams", force: true do |t|
    t.text     "dream",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "necesito",           limit: 255
    t.text     "quiero",             limit: 255
    t.text     "ofrezco",            limit: 255
    t.text     "description"
    t.string   "select_type"
  end

  add_index "dreams", ["user_id"], name: "index_dreams_on_user_id"

  create_table "etapas", force: true do |t|
    t.string   "etapa1"
    t.integer  "indicador1"
    t.string   "etapa2"
    t.integer  "indicador2"
    t.string   "etapa3"
    t.integer  "indicador3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "large_content"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.string   "Nombre"
    t.string   "Razon_social"
    t.integer  "Nit"
    t.string   "Direccion"
    t.integer  "Telefono"
    t.string   "Nombre_representante"
    t.string   "Persona_contacto"
    t.text     "Pedido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.string   "Producto"
    t.integer  "Unidades"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solutions", force: true do |t|
    t.integer  "micropost_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "solutions", ["user_id"], name: "index_solutions_on_user_id"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "lastname"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "username"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.date     "born_date"
    t.string   "website"
    t.integer  "points"
    t.integer  "level",                  default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wikis", force: true do |t|
    t.string   "title"
    t.text     "abstract"
    t.text     "content"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
