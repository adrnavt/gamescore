class AddForeignKeyToGames < ActiveRecord::Migration
    def self.up
    add_column :games, :consola_id, :integer
  end

  def self.down
    remove_column :games, :consola_id
  end
end
