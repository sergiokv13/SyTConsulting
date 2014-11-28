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

ActiveRecord::Schema.define(version: 20141128170350) do

  create_table "acontecimientos", force: true do |t|
    t.string   "periodo_acontecimiento"
    t.string   "titulo_acontecimiento"
    t.text     "descripcion_acontecimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "certificacions", force: true do |t|
    t.string   "titulo_certificacion"
    t.text     "descripcion_certificacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", force: true do |t|
    t.string   "nombre"
    t.string   "correo_electronico"
    t.string   "telefono"
    t.text     "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informacions", force: true do |t|
    t.text     "contenido_informacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portafolios", force: true do |t|
    t.string   "titulo_portafolio"
    t.text     "descripcion_portafolio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "nombre_servicio"
    t.text     "descripcion_servicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
