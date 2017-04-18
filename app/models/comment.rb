class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  attr_accessor :user_id
end
