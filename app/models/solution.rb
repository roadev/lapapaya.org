class Solution < ActiveRecord::Base
  has_merit
  belongs_to :user
  belongs_to :micropost
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png image/gif)
end
