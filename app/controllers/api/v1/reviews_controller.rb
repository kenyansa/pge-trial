module Api
    module V1
        class ReviewsController < ApplicationController

            def create
                review = Review.new(review_params)
                if review.save
                    render json: ReviewSerializer.new(review).serialized_json
                    else
                        render json: { error: review.errors.messages}, status: 422
                    end
            end

            def update
                review = Review.find_by(params[:id])
                if review.update(review_params)
                    render json: ReviewSerializer.new(review).serialized_json
                else
                    render json: { error: project.errors.messages }, status: 422
                end
            end

            def destroy
                review = Review.find(params[:id])
                if review.destroy
                    head :no_content
                else
                    render json: { error: review.errors.messages}, status: 422
                end
            end


            private
            def review_params
                params.require(:review).permit(:title, :description, :score, :project_id)
            end
        end
    end
end