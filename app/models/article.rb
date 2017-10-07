# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#  preview    :text
#  author     :string
#  publisher  :string
#  source     :string
#  url        :string
#

class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

  mount_uploader :photo, PhotoUploader

  acts_as_votable

end
