class AddCocktailToKitchensController < ApplicationController
    def new
    end

    def create
        @add_cocktail_to_kitchens = AddCocktailToKitchen.create
    end

    private

    # def actk_params
    #     params.require(:add_cocktail_to_kitchen).permit(:cocktail, :kitchen)
    # end
end
