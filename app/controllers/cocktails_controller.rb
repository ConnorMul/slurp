class CocktailsController < ApplicationController
    def show
        @cocktail = Cocktail.find(params[:id])
        if current_user
            if current_user.cocktails.include?(@cocktail)
                new_review = Review.find_by(user: current_user, cocktail: @cocktail)
            else
                @review = Review.new
            end
        end
    end
end
