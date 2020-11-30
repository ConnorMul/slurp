class AddCocktailToKitchen < ApplicationRecord
  belongs_to :cocktail
  belongs_to :kitchen
end
