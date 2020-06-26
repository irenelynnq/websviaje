class Gallery < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :pictures, dependent: :destroy
end
