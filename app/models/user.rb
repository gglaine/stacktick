class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #
  has_many :articles

  has_attachment  :avatar, accept: [:jpg, :png, :gif]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# Callbacks --------------------

  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
