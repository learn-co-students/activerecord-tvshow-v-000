def highest_rating
  Show.order(:rating :desc).limit(1)
end
