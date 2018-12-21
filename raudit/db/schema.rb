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

ActiveRecord::Schema.define(version: 2018_12_20_160359) do

  create_table "centros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "estados_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paquete_plan_to_procedimientos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "idpaquete"
    t.bigint "idprocedimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idpaquete"], name: "fk_rails_c24bde0606"
    t.index ["idprocedimiento"], name: "fk_rails_f4df32400a"
  end

  create_table "paquete_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "ano"
    t.text "alcance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paquetes_plan_to_fechas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "idpaquete"
    t.string "responsable"
    t.date "fecha_plan_i"
    t.date "fecha_plan_f"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.integer "dias"
    t.text "comentarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedimientos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.text "objetivo"
    t.string "tipo_objetivo"
    t.bigint "idprocesos"
    t.string "cargo_lider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procesos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.text "objetivo"
    t.bigint "tipo_objetivo"
    t.bigint "tipo"
    t.bigint "centro"
    t.bigint "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "riesgos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "idprodimientos"
    t.text "descripcion"
    t.text "causa"
    t.text "efecto"
    t.text "r_categoria"
    t.float "nivel_riesgo_inherente"
    t.boolean "f_natural"
    t.boolean "f_humano"
    t.boolean "f_proceso"
    t.boolean "f_tecnologico"
    t.boolean "f_otros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_objetivos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_procesos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.string "estado"
    t.string "password_digest"
    t.string "remember_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "activation_digest"
    t.boolean "activated"
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_foreign_key "paquete_plan_to_procedimientos", "paquete_plans", column: "idpaquete"
  add_foreign_key "paquete_plan_to_procedimientos", "procedimientos", column: "idprocedimiento"
end
