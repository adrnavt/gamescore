class Review < ActiveRecord::Base
	belongs_to :game
	has_attached_file :img_review1,
   :styles => { :large => "480x300#", :thumb => "70x52#" },
   :url => "/reviews/:id/:style.:extension",
   :path => ":rails_root/public/reviews/:id/:style.:extension"
   
   has_attached_file :img_review2,
   :styles => { :large => "480x300#", :thumb => "70x52#" },
   :url => "/reviews2/:id/:style.:extension",
   :path => ":rails_root/public/reviews2/:id/:style.:extension"
end
