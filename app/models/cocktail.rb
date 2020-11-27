class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_one_attached :photo # so we can get the photos from cloudinary

  validates :name, presence: true, uniqueness: true
end
