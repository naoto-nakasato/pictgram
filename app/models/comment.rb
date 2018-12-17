class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  belongs_to :topic
  #validatesを使い
  #- ユーザーがコメントできる数に制限はなし
  #- ユーザーがコメントできる数に制限はなし
end
