class ReviewsController < ApplicationController

  http_basic_authenticate_with name: "test", password: "secret", only: :destroy

  def create
    @activity = Activity.find(params[:activity_id])
    @review = @activity.reviews.create(review_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity = Activity.find(params[:activity_id])
    @review = @activity.reviews.find(params[:id])
    @review.destroy
    redirect_to activity_path(@activity)
  end

  private
    def review_params
      params.require(:review).permit(:reviewer_id, :rating, :body)
    end
end
