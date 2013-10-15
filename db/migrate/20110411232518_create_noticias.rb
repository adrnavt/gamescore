class CreateNoticias < ActiveRecord::Migration
  def self.up
    create_table :noticias do |t|
      t.string :titulo
      t.string :img_noticia
      t.string :descripcion_img
      t.string :autor
      t.string :lugar
      t.text :nota
      t.string :publisher
      t.integer :consola_id

      t.timestamps
    end
  end

  def self.down
    drop_table :noticias
  end
end
