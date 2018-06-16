class Show < ActiveRecord::Base
	#highest_rating: this method should return the highest value in the ratings column. hint: if there is a minimum Active Record method, might there be a maximum method?
	def highest_rating
		#Show.().maximum
	end

	#most_popular_show: this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
	def most_popular_show
	end

	#lowest_rating: returns the lowest value in the ratings column.
	def lowest_rating
	end

	#least_popular_show: returns the show with the lowest rating.
	def least_popular_show
	end

	#ratings_sum: returns the sum of all of the ratings.
	def ratings_sum
	end

	#popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
	def popular_shows
	end

	#shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
	def shows_by_alphabetical_order
	end
end
