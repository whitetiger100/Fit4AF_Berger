class MoviesController < ApplicationController
	def index
		@movies = %w(Iron_Man Superman Spider-Man)
	end
end
