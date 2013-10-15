class Banner < ActiveRecord::Base
  
   has_attached_file :imagen,
   :styles => { :large => "559x290#", :thumb => "70x50#" },
   :url => "/banners/:id/:style.:extension",
   :path => ":rails_root/public/banners/:id/:style.:extension"
  
  
end
