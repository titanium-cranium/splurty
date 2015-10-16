class QuotesController < ApplicationController
	def index
			@quote = Quote.order("RANDOM()").first
	end
	

	def create
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<strong> Sayings must be between 3 and 140 characters in length. </strong>'
		end
		redirect_to root_path

	end

	def about
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end

	

end
