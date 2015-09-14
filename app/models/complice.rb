class Complice < ActiveRecord::Base
  belongs_to :user
  belongs_to :dream
end
