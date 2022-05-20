class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :eng_item
end
