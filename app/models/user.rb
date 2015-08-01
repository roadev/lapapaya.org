class User < ActiveRecord::Base
  has_merit
  has_many :dreams
  has_many :microposts
  has_many :solutions
  has_attached_file :avatar, styles: { :medium => "100x100#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: %w(image/jpeg image/jpg image/png image/gif), message: 'Ingresa tu avatar en extensión jpg o png'
include GiocoResource
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
