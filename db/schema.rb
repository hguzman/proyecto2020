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

ActiveRecord::Schema.define(version: 20200812204358) do

  create_table "addresses", force: :cascade do |t|
    t.string "direccion"
    t.integer "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_addresses_on_persona_id"
  end

  create_table "carros", force: :cascade do |t|
    t.string "placa"
    t.integer "modelo"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "persona_id"
    t.string "vin"
    t.index ["persona_id"], name: "index_carros_on_persona_id"
  end

  create_table "carros_colores", id: false, force: :cascade do |t|
    t.integer "carro_id", null: false
    t.integer "color_id", null: false
    t.index ["carro_id", "color_id"], name: "index_carros_colores_on_carro_id_and_color_id"
  end

  create_table "colores", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas_personas", id: false, force: :cascade do |t|
    t.integer "empresa_id", null: false
    t.integer "persona_id", null: false
    t.index ["empresa_id", "persona_id"], name: "index_empresas_personas_on_empresa_id_and_persona_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.integer "edad"
    t.boolean "estado"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "cedula"
    t.string "nombre"
    t.integer "estatura"
    t.boolean "estado"
    t.string "sexo"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "telefonos", force: :cascade do |t|
    t.string "telefono"
    t.boolean "estado"
    t.integer "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["persona_id"], name: "index_telefonos_on_persona_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nombre"
    t.string "direccion"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sexo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
