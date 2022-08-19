class ReviewsController < ApplicationController

  def create
    @review = Review.new(params_review)
    @review.list = List.find(params[:list_id])
    @review.save
    redirect_to list_path(List.find(params[:list_id]))
  end

private

  def params_review
    params.require(:review).permit(:content)
  end
end
