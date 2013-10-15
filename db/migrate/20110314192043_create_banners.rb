class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
