class Noticia < ActiveRecord::Base
  belongs_to :consola
   has_attached_file :img_noticia,
   :styles => { :large => "600x300#", :thumb => "70x52#" },
   :url => "/noticias/:id/:style.:extension",
   :path => ":rails_root/public/noticias/:id/:style.:extension"
end
