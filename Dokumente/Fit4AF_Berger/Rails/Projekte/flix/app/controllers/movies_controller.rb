class moviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	
	def index
		@movies = movie.shown
	end

	def show
		@reviews = Review.where(params[:id])
	end

	def new
		@movie = movie.new
	end

	def create
		@movie = movie.new(movie_params)
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
			redirect_to movies_url, notice: "movie successful edited!"
		else
			render :edit
		end
	end

	def destroy
		@movie.destroy
		redirect_to movies_url, alert: "movie successful deleted!"
	end

	private
		def movie_params
			params.require(:movie).permit(:poster_image_file, :director, :cast, :duration, :title, :description, :total_gross, :rating, :released_on)
		end

		def set_movie
			@movie = movie.find(params[:id])
		end

end
