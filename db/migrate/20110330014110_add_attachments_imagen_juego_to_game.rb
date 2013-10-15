class AddAttachmentsImagenJuegoToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :imagen_juego_file_name, :string
    add_column :games, :imagen_juego_content_type, :string
    add_column :games, :imagen_juego_file_size, :integer
    add_column :games, :imagen_juego_updated_at, :datetime
  end

  def self.down
    remove_column :games, :imagen_juego_file_name
    remove_column :games, :imagen_juego_content_type
    remove_column :games, :imagen_juego_file_size
    remove_column :games, :imagen_juego_updated_at
  end
end
