class Notification < ActiveRecord::Base
	belongs_to :professor
	
	has_attached_file :image, style: {medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
