class KitchensController < ApplicationController

    def update
    end

    def show
        @kitchen = Kitchen.find(params[:id])
    end
end
