class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }
end
