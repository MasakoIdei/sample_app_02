class List < ApplicationRecord
  attachment :image

#バリデーション
  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
