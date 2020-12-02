class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :drink
      t.string :alcohol_percentage
      t.text :description
      t.references :kitchen, foreign_key: true, optional: true


      t.timestamps
    end
  end
end
