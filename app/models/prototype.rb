class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments

    validates :title, presence: true
    validates :cacth_copy, presence: true
    validates :concept, presence: true
    validates :image, presence: true

end
