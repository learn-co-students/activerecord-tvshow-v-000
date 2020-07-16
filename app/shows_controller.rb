
  def highest_rating
    # rating = shows.where("rating = maximum").order(:desc)
    maximum(:rating)
  end
