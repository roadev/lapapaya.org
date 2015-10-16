class Complice < ActiveRecord::Base
  belongs_to :user
  belongs_to :dream
  after_create :send_email

  def send_email
    CompliceCreation.complice_email(self.user, self.id).deliver
  end
end
