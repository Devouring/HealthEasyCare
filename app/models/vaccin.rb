class Vaccin < ActiveRecord::Base
  attr_accessible :date, :nom, :rappel, :user
  belongs_to :user
end
