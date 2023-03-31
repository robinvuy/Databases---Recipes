# file: app.rb

require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('recipies_directory')

# Perform a SQL query on the database and get the result set.
sql = 'SELECT id, name, average_cooking_time_in_minutes, rating_from_1_to_5 FROM recipes;'
result = DatabaseConnection.exec_params(sql, [])

# Print out each record from the result set .


result.each do |record|
  p record
end