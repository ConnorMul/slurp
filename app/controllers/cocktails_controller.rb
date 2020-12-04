class CocktailsController < ApplicationController

    def search
        if params[:search].blank?  
            redirect_to(cocktails_path, alert: "Empty field!") and return  
        else  
            @parameter = params[:search].downcase 
            @results = Cocktail.all.where("lower(drink) LIKE :search", search: "%#{@parameter}%")
        end  
    end

    def new
        @cocktail = Cocktail.new
    end

    def create
        @cocktail = Cocktail.create(cocktail_params)

        if @cocktail.valid?
            @current_user.cocktails << @cocktail
            redirect_to cocktails_path
        else
            flash[:ct_errors] = @cocktail.errors.full_messages
            redirect_to new_cocktail_path
        end
    end
    
    def index
        @cocktails = Cocktail.all
    end


    def show
        @cocktail = Cocktail.find(params[:id])
    end

    def update
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:drink, :alcohol_percentage, :description)
    end


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
