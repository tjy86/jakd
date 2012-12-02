class Deck < ActiveRecord::Base
  attr_accessible :face, :suit, :value
end
