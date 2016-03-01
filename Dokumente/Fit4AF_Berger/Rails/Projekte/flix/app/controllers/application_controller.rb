class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_action :set_sidebar_movies

private

  def set_sidebar_movies
		@sidebar_movies = Movie.total_gross
	end

end
