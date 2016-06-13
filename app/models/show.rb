class Show < ActiveRecord::Base

def create
# show = Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10)


def can_be_created_with_a_hash_of_attributes
  attributes = {
      title: "Rick and Morty",
      day: "Thursday",
      network: "Adult Swim",
      rating: 10
  }
  Movie.create(attributes)
end

end

end 

