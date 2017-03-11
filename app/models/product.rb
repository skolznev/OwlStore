class Product < ApplicationRecord
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "img4.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
