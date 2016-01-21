class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		permitted_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
		@movie = Movie.create(permitted_params)
		redirect_to movies_url
	end
end
