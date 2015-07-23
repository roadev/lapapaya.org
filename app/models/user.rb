class User < ActiveRecord::Base
  has_merit

include GiocoResource
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dreams
  has_many :microposts
end