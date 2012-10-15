class ReviewsController < ApplicationController
	before_filter :authenticate_user!

	def new
		id = params[:id]
		@cafe = Cafe.find(id)
	end

	def create
		@review = current_user.reviews.build(params[:review])
		if @review.save
			flash[:notice] = "Review was posted successfully. Thank you for your review!"
			redirect_to cafe_path(:cafe_id)
		else
			redirect_to cafes_path
		end
	end

	def destroy

	end

end