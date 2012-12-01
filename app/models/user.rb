# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  avatar          :string(255)
#  balance         :float
#  games_won       :integer
#  games_lost      :integer
#  amt_won         :float
#  amt_lost        :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  # attr_accessible :title, :body
end
