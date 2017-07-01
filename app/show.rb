class Show < ActiveRecord::Base
  def self.highest_rating
  maximum("rating")
  end
end
#<class name>.sum(:<column_name>)
#Client.maximum("age")
