class Complice < ActiveRecord::Base
  belongs_to :user
  belongs_to :dream
  validates :dream_id, presence: { notice: ": Por favor ingresa el número del sueño" }, numericality: { message: ": Debe ingresar un número" }
  after_create :add_points
  def add_points
    #@user.level ++
  end
end
