class CreateAddCocktailToKitchens < ActiveRecord::Migration[6.0]
  def change
    create_table :add_cocktail_to_kitchens do |t|
      t.references :cocktail, null: false, foreign_key: true
      t.references :kitchen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
