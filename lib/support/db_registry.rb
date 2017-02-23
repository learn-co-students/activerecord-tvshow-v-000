require_relative "./connection_adapter.rb"

DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/#{DBNAME}-test.db"),
  development: ConnectionAdapter.new("db/#{DBNAME}-development.db"),
  production: ConnectionAdapter.new("db/#{DBNAME}-production.db")
  )

# ALEX REMINDER TO RAISE A FLAG ON THIS! LAB DID NOT REQUIRE RELATIVE IN THIS FILE UPON FORKING.
