class User < ActiveRecord::Base
  #has_merit
  has_many :dreams
  has_many :microposts
  has_many :solutions
  has_many :complices
  has_attached_file :avatar, styles: { :medium => "100x100#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: %w(image/jpeg image/jpg image/png image/gif), message: 'Ingresa tu avatar en extensión jpg o png'
  validates_uniqueness_of :username, message: ": Este nombre de usuario ya se encuentra registrado"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # after_validation :set_level
  # def set_level
  #   if Complice.where(user_id: :user_id).count == 0
  #     current_user.update_attribute(:level, current_user.level + 0)
  #   else if (Complice.where(user_id: :user_id).count >= 5) && (Complice.where(user_id: :user_id).count <= 15)
  #     current_user.update_attribute(:level, current_user.level + 1)
  #   end
  #   end
  # end
 # def pointsa
 #   if Complice.where(user_id: :user_id).count == 0
 #     user_id = user_id+1
 #   end
 #  end
end
