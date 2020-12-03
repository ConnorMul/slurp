class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end
    
    def create
        @review = Review.create(review_params)
        if @review.valid?
            @current_user.reviews << @review
            redirect_to kitchen_path(@current_user.kitchen)
        else
            flash[:review_errors] = @review.errors.full_messages
            redirect_to new_review_path
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

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        flash[:notice] = "Review Deleted!"
        redirect_to kitchen_path(@current_user.kitchen)
    end

    private

    def review_params
        params.require(:review).permit(:content, :stars, :user_id, :cocktail_id)
    end

end
