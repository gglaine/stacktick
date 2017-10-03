# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#  username               :string
#  avatar                 :string
#  admin                  :boolean          default(FALSE)
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #
  has_many :articles
  has_many :comments

  mount_uploader :avatar, AvatarUploader

  has_attachment  :avatar, accept: [:jpg, :png, :gif, :jpeg]

  include Gravtastic
  gravtastic

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :avatar, presence: true

  acts_as_voter


# Callbacks --------------------

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
