class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :email, :crypted_password, :password_salt, :persistence_token, :nombre, :apellido_p, :apellido_m, :rol
    end
  end

  def self.down
    drop_table :users
  end
end
