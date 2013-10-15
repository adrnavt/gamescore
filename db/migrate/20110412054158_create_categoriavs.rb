class CreateCategoriavs < ActiveRecord::Migration
  def self.up
    create_table :categoriavs do |t|
      t.string :categoria

      t.timestamps
    end
  end

  def self.down
    drop_table :categoriavs
  end
end
