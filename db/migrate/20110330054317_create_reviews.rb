class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.text :subdescripcion
      t.string :titulo
      t.text :reviewp1
      t.string :img_review1
      t.text :reviewp2
      t.text :img_review2
      t.text :reviewp3
      t.integer :game_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
