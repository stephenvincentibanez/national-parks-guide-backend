class ReviewsController < ApplicationController

    def index
        reviews = Review.all 
        render json: reviews
    end

    def create
        review = Review.create(username: params[:username], comment: params[:comment], user_id: params[:user_id], park_id: params[:park_id])
        render json: review
    end

    def update
        
    end

    def destroy
        review = Review.find_by_id(params[:id])
        review.destroy
        render json: review
    end

end
