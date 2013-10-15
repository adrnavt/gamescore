class CreateMensajes < ActiveRecord::Migration
  def self.up
    create_table :mensajes do |t|
      t.string :nombre
      t.string :email
      t.string :asunto
      t.text :contenido
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :mensajes
  end
end
