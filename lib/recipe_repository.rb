require_relative './recipe'

Class RecipeRepository
  def all
    sql = 'SELECT id, name, average_cooking_time_in_minutes, rating_from_1_to_5 FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql, [])

    recipes = []
    result_set.each do |dish|
      recipe = Recipe.new
      recipe.id = record['id']
      recipe.name = record['name']
      recipe.average_cooking_time_in_minutes = record['average_cooking_time_in_minutes']
      recipe.rating_1_to_5 = record['rating_1_to_5']
    
      recipes << recipe
    end
  return recipes
  end

  def find(id)
    sql = 'SELECT id, name, average_cooking_time_in_minutes, rating_ FROM albums WHERE id = $1;'
    sql_params = [id]
    result_set = DatabaseConnection.exec_params(sql, sql_params)
    

    record = result_set[0]
    album = Album.new
    album.id = record['id']
    album.title = record['title']
    album.release_year = record['release_year']
    album.artist_id = record['artist_id']


  return album  
  end


  # Gets a single record by its ID
  # One argument: the id (number)
  def find(id)
    # Executes the SQL query:
    # SELECT id, name, cohort_name FROM students WHERE id = $1;

    # Returns a single Student object.
  end