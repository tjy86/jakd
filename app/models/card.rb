# == Schema Information
#
# Table name: cards
#
#  id    :integer          not null, primary key
#  value :integer
#  suit  :string(255)
#  face  :string(255)
#  photo :string(255)
#

class Card < ActiveRecord::Base
  # attr_accessible :title, :body
end
