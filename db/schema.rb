# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110413231144) do

  create_table "banners", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "categoriavs", :force => true do |t|
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consolas", :force => true do |t|
    t.string   "nombre_consola"
    t.string   "compania_consola"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.string   "imagen_juego"
    t.string   "nombre_juego"
    t.string   "compania"
    t.string   "distribuidor"
    t.string   "genero"
    t.date     "fecha_lanzamiento"
    t.string   "esrb"
    t.string   "consola"
    t.string   "gamescore"
    t.integer  "ratescore"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_juego_file_name"
    t.string   "imagen_juego_content_type"
    t.integer  "imagen_juego_file_size"
    t.datetime "imagen_juego_updated_at"
    t.integer  "consola_id"
  end

  create_table "mensajes", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "asunto"
    t.text     "contenido"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newreleases", :force => true do |t|
    t.integer  "game_id"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.string   "titulo"
    t.string   "img_noticia"
    t.string   "pie_img"
    t.string   "autor"
    t.text     "nota"
    t.date     "fecha_nota"
    t.string   "lugar"
    t.integer  "consola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_noticia_file_name"
    t.string   "img_noticia_content_type"
    t.integer  "img_noticia_file_size"
    t.datetime "img_noticia_updated_at"
  end

  create_table "noticias", :force => true do |t|
    t.string   "titulo"
    t.string   "img_noticia"
    t.string   "descripcion_img"
    t.string   "autor"
    t.string   "lugar"
    t.text     "nota"
    t.string   "publisher"
    t.integer  "consola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_noticia_file_name"
    t.string   "img_noticia_content_type"
    t.integer  "img_noticia_file_size"
    t.datetime "img_noticia_updated_at"
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
    t.integer  "user_id"
  end

  create_table "previews", :force => true do |t|
    t.string   "titulo"
    t.text     "subdescripcion"
    t.text     "previewp1"
    t.string   "img_preview"
    t.text     "previewp2"
    t.string   "img_preview2"
    t.text     "previewp3"
    t.string   "autor"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_preview1_file_name"
    t.string   "img_preview1_content_type"
    t.integer  "img_preview1_file_size"
    t.datetime "img_preview1_updated_at"
    t.string   "img_preview2_file_name"
    t.string   "img_preview2_content_type"
    t.integer  "img_preview2_file_size"
    t.datetime "img_preview2_updated_at"
    t.string   "img_preview_file_name"
    t.string   "img_preview_content_type"
    t.integer  "img_preview_file_size"
    t.datetime "img_preview_updated_at"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "releases", :force => true do |t|
    t.integer  "game_id"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.text     "subdescripcion"
    t.string   "titulo"
    t.text     "reviewp1"
    t.string   "img_review1"
    t.text     "reviewp2"
    t.text     "img_review2"
    t.text     "reviewp3"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_review1_file_name"
    t.string   "img_review1_content_type"
    t.integer  "img_review1_file_size"
    t.datetime "img_review1_updated_at"
    t.string   "img_review2_file_name"
    t.string   "img_review2_content_type"
    t.integer  "img_review2_file_size"
    t.datetime "img_review2_updated_at"
    t.string   "autor"
  end

  create_table "searches", :force => true do |t|
    t.string   "kewywords"
    t.integer  "categoria_id"
    t.integer  "consola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.integer  "last_poster_id"
    t.datetime "last_post_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forum_id"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "nombre"
    t.string   "apellido_p"
    t.string   "apellido_m"
    t.string   "rol"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "titulo_video"
    t.string   "img_video"
    t.text     "descripcion"
    t.string   "url"
    t.integer  "game_id"
    t.integer  "categoriav_id"
    t.integer  "consola_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_video_file_name"
    t.string   "img_video_content_type"
    t.integer  "img_video_file_size"
    t.datetime "img_video_updated_at"
    t.integer  "review_id"
  end

end
