class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :pic
    validates :title, presence: true,
                    length: { minimum: 5 }
end
