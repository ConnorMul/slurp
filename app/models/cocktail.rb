class Cocktail < ApplicationRecord
    has_many :reviews
    has_many :add_cocktails_to_kitchens
    has_many :users, through: :reviews
    belongs_to :kitchen, optional: true
end
