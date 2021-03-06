class Notification < ActiveRecord::Base
	

	acts_as_votable
	belongs_to :professor

	has_attached_file :image, 
	styles: { medium: "300x300>",thumb: "100x100>"},
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
	
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
