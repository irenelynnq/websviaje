class Comment < ApplicationRecord
  belongs_to :gallery
  validates :body,
            presence: true,
            length: {minimum: 1}
            
  validates :commenter,
            presence: true,
            length: {minimum: 1}

end
