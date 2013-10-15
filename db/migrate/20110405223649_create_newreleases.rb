class CreateNewreleases < ActiveRecord::Migration
  def self.up
    create_table :newreleases do |t|
      t.integer :game_id
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :newreleases
  end
end
