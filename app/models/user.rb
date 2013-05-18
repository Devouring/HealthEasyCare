class User < ActiveRecord::Base
  attr_accessible :age, :email, :login, :medecin, :password, :taille, :user_id
  has_many :imcs
  has_many :vaccins
end
