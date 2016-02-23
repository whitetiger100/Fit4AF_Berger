class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	def index
		@movies = Movie.released
	end

	def show
		
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(movie_params)
		redirect_to movies_url
	end

	def edit

	end

	def update
		@movie.update(movie_params)
		redirect_to movies_url
	end

	def destroy
		@movie.destroy
		redirect_to movies_url
	end

private

	def movie_params
		params.require(:movie).permit(:title, :poster_image_file, :description, :cast, :director, :duration, :rating, :released_on, :total_gross)
	end

	def set_movie
		@movie = Movie.find(params[:id])
	end
end
