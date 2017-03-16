class Product < ApplicationRecord

	#Settings for paperclip gem
	has_attached_file :picture, styles: {}, default_url: "img4.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

	#Fields validations 
	validates :name, 	presence: true, 
						length: { minimum: 3 }

end
