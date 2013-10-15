class Preview < ActiveRecord::Base
	belongs_to :game
	has_attached_file :img_preview,
   :styles => { :large => "480x300#", :thumb => "70x52#" },
   :url => "/previews/:id/:style.:extension",
   :path => ":rails_root/public/previews/:id/:style.:extension"
   
   has_attached_file :img_preview2,
   :styles => { :large => "480x300#", :thumb => "70x52#" },
   :url => "/previews2/:id/:style.:extension",
   :path => ":rails_root/public/previews2/:id/:style.:extension"
end
