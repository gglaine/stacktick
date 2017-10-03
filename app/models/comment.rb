# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  commenter  :string
#  body       :text
#  article_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

end
