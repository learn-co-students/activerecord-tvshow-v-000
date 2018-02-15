class Show <ActiveRecord::Base
  def self.highest_rating
    self.maximum('rating')
  end

  def self.most_popular_show
    self.find_by('rating= ?', self.highest_rating)
  end

  def self.lowest_rating
    self.minimum('rating')
  end

  def self.least_popular_show
    self.find_by('rating=?', self.lowest_rating)
  end

  def self.ratings_sum
    self.sum('rating')
  end

  def self.popular_shows
    self.where('rating > 5')
  end

  def self.shows_by_alphabetical_order
    self.order('name')
  end



end

#
# describe "::highest_rating" do
#   it "returns the TV show with the highest rating" do
#     expect(Show.highest_rating).to eq(10)
#   end
# end
#
# describe "::most_popular_show" do
#   it "returns the tv show with the highest rating" do
#     expect(Show.most_popular_show).to eq(@rick_and_morty)
#   end
# end
#
# describe "::lowest_rating" do
#   it "returns the TV show with the lowest rating" do
#     expect(Show.lowest_rating).to eq(2)
#   end
# end
#
# describe "::least_popular_show" do
#   it "returns the tv show with the lowest rating" do
#     expect(Show.least_popular_show).to eq(@the_cleveland_show)
#   end
# end
#
# describe "::ratings_sum" do
#   it "returns the sum of all the ratings of all the tv shows" do
#     expect(Show.ratings_sum).to eq(22)
#   end
# end
#
# describe "::popular_shows" do
#   it "returns an array of all of the shows with a rating above 5" do
#     expect(Show.popular_shows).to eq([@rick_and_morty, @law_and_order])
#   end
# end
#
# describe "::shows_by_alphabetical_order" do
#   it "returns an array of all of the shows, listed in alphabetical order" do
#     expect(Show.shows_by_alphabetical_order).to eq([@fear_the_walking_dead, @law_and_order, @rick_and_morty, @the_cleveland_show])
#   end
# end
# end
