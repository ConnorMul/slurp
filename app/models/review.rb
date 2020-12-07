class Review < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail


  validates :stars, :content, presence: true
end
