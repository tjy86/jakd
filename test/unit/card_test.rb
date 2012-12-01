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

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
