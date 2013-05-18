class Imc < ActiveRecord::Base
  attr_accessible :date, :value, :poids, :user, :taille
  belongs_to :user
  def calcul_imc
    self.value = (self.poids.to_f / (self.taille * self.taille).to_f) * 10000.0
  end
end
