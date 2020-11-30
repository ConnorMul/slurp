class ReviewsController < ApplicationController

    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to user_path(@review.user)
        else
            flash[:review_errors] = @review.errors.full_messages
            redirect_to cocktails_path
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to user_path(@review.user)
    end

    private

    def review_params
        params.require(:review).permit(:content, :stars, :user, :cocktail)
    end

end
