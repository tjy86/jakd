# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  avatar          :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  balance         :float            default(1000.0)
#  games_won       :integer          default(0)
#  games_lost      :integer          default(0)
#  amt_wont        :float            default(0.0)
#  amt_lost        :float            default(0.0)
#

class User < ActiveRecord::Base
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  attr_accessible :avatar, :password_digest, :username
end
