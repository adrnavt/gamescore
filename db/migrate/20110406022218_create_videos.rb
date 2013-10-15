class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :titulo_video
      t.string :img_video
      t.text :descripcion
      t.string :url
      t.integer :game_id
      t.integer :categoriav_id
      t.integer :consola_id

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
