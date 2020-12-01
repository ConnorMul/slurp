class SearchesController < ApplicationController
    include HTTParty
    def popular
        @popular_cocktails = HTTParty.get('https://the-cocktail-db.p.rapidapi.com/popular.php')
        

    end
end