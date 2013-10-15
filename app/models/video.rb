class Video < ActiveRecord::Base
	 belongs_to :game
   belongs_to :categoriav
	 has_attached_file :img_video,
   :styles => { :medium => "200x120#", :thumb => "70x52#" },
   :url => "/videos/:id/:style.:extension",
   :path => ":rails_root/public/videos/:id/:style.:extension"
end
