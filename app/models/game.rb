class Game < ActiveRecord::Base
   ajaxful_rateable :stars => 5, :dimensions => [:score]
   belongs_to :consola
   has_many :reviews, :dependent => :destroy  
   has_many :previews, :dependent => :destroy
   has_many :newreleases, :dependent => :destroy    
   has_many :videos  
   has_many :rates
   has_attached_file :imagen_juego,
   :styles => { :large => "500x300#", :thumb => "100x114#" },
   :url => "/games/:id/:style.:extension",
   :path => ":rails_root/public/games/:id/:style.:extension"
end
