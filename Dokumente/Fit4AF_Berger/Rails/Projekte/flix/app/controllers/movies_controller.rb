class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	
	def index
		@movies = Movie.shown
	end

	def show
		@reviews = Review.where(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to movies_url
		else
		render :new
		end
	end

	def edit
	end

	def update
		@movie.update(movie_params)
		if @movie.save
			redirect_to movies_url, notice: "Film erfolgreich überarbeitet."
		else
			render :edit
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_url, alert: "Film erfolgreich gelöscht."
	end

	private
		def movie_params
			params.require(:movie).permit(:poster_image_file, :director, :cast, :duration, :title, :description, :total_gross, :rating, :released_on)
		end

		def set_movie
			@movie = Movie.find(params[:id])
		end

end
