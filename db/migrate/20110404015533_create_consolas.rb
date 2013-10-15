class CreateConsolas < ActiveRecord::Migration
  def self.up
    create_table :consolas do |t|
      t.string :nombre_consola
      t.string :compania_consola

      t.timestamps
    end
  end

  def self.down
    drop_table :consolas
  end
end
