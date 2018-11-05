require_relative 'spec_helper'

describe Show do

  after(:each) do
    Show.destroy_all
  end

  before(:each) do
    @rick_and_morty = Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10)
    @law_and_order = Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => 7)
    @the_cleveland_show = Show.create(:name => "The Cleveland Show", :day => "Monday", :network => "Fox", :rating => 2)
    @fear_the_walking_dead = Show.create(:name => "Fear the Walking Dead", :day => "Sunday", :network => "AMC", :rating => 3)
  end



  describe "::highest_rating" do
    it "returns the TV show with the highest rating" do
      expect(Show.highest_rating).to eq(10)
    end
  end

  describe "::most_popular_show" do
    it "returns the tv show with the highest rating" do
      expect(Show.most_popular_show).to eq(@rick_and_morty)
    end
  end

  describe "::lowest_rating" do
    it "returns the TV show with the lowest rating" do
      expect(Show.lowest_rating).to eq(2)
    end
  end

  describe "::least_popular_show" do
    it "returns the tv show with the lowest rating" do
      expect(Show.least_popular_show).to eq(@the_cleveland_show)
    end
  end

  describe "::ratings_sum" do
    it "returns the sum of all the ratings of all the tv shows" do
      expect(Show.ratings_sum).to eq(22)
    end
  end

  describe "::popular_shows" do
    it "returns an array of all of the shows with a rating above 5" do
      expect(Show.popular_shows).to eq([@rick_and_morty, @law_and_order])
    end
  end

  describe "::shows_by_alphabetical_order" do
    it "returns an array of all of the shows, listed in alphabetical order" do
      expect(Show.shows_by_alphabetical_order).to eq([@fear_the_walking_dead, @law_and_order, @rick_and_morty, @the_cleveland_show])
    end
  end
end
