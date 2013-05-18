class Imc < ActiveRecord::Base
  attr_accessible :date, :value, :poids, :user, :taille
  belongs_to :user
  def calcul_imc
    self.value = self.poids / (self.taille * self.taille)
  end
end
