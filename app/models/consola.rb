class Consola < ActiveRecord::Base
	has_many :games, :dependent => :destroy
  has_many :noticias
end
