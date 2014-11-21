class User < ActiveRecord::Base
include GiocoResource
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dreams
  has_many :microposts
end

module ModelGenerator
  def adding_methods
    inject_into_class "app/models/#{@model_name}.rb", @model_name.capitalize, "include GiocoResource\n"
    copy_file find_in_source_paths("config.rb"), "config/initializers/giocopro.rb"
  end
end

def adding_methods
current_user.track_event('Login')
end

