class CocktailsController < ApplicationController

    def index
        @cocktails = Cocktail.all
    end


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

    private

    # def request_api(url)
    #   response = Excon.get(
    #     url,
    #     headers: {
    #       'X-RapidAPI-Host' => URI.parse(url).host,
    #       'X-RapidAPI-Key' => ENV.fetch('1a53f7da9bmsh55c76e76c5b5770p187d7fjsn910a9b05df55')
    #     }
    #   )
    #   return nil if response.status != 200
    #   JSON.parse(response.body)
    # end
    # def find_cocktail(name)
    #   request_api(
    #     "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{URI.encode(name)}"
    #   )
    # end
end
