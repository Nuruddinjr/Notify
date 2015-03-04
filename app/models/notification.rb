class Notification < ActiveRecord::Base
	belongs_to :professor

	#has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/default.jpeg"
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
