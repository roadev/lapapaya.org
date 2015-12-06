class Micropost < ActiveRecord::Base
	#belongs_to :dream
	belongs_to :user
	has_many :solutions
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png image/gif)
end
