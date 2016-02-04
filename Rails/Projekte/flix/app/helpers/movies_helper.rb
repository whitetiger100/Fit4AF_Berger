module MoviesHelper
	def image_for(movie)
		if movie.poster_image_file.blank?
			image_tag("dummy.jpg", height: "200")
		else
			image_tag(movie.poster_image_file, height: "400")
		end
	end
end
