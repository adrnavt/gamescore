class CreatePreviews < ActiveRecord::Migration
  def self.up
    create_table :previews do |t|
      t.string :titulo
      t.text :subdescripcion
      t.text :previewp1
      t.string :img_preview
      t.text :previewp2
      t.string :img_preview2
      t.text :previewp3
      t.string :autor
      t.integer :game_id

      t.timestamps
    end
  end

  def self.down
    drop_table :previews
  end
end
