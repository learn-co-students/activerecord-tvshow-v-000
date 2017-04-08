require '/home/satkins16-43771/code/labs/activerecord-tvshow-v-000/config/environment'

class ConnectionAdapter
  attr_reader :adapter, :database

  def initialize(database, adapter="sqlite3")
    @adapter = adapter
    @database = database
  end

  def connect!
    ActiveRecord::Base.establish_connection(
      :adapter => self.adapter,
      :database => self.database
    )
  end
end
