class AddAttachmentsImgNoticiaToNoticia < ActiveRecord::Migration
  def self.up
    add_column :noticias, :img_noticia_file_name, :string
    add_column :noticias, :img_noticia_content_type, :string
    add_column :noticias, :img_noticia_file_size, :integer
    add_column :noticias, :img_noticia_updated_at, :datetime
  end

  def self.down
    remove_column :noticias, :img_noticia_file_name
    remove_column :noticias, :img_noticia_content_type
    remove_column :noticias, :img_noticia_file_size
    remove_column :noticias, :img_noticia_updated_at
  end
end
