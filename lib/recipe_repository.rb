require_relative './recipe'

class RecipeRepository
  def all
    sql = 'SELECT id, name, average_cooking_time_in_minutes, rating_from_1_to_5 FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql, [])

    recipes = []
    result_set.each do |dish|
      recipe = Recipe.new
      recipe.id = dish['id']
      recipe.name = dish['name']
      recipe.average_cooking_time_in_minutes = dish['average_cooking_time_in_minutes']
      recipe.rating_from_1_to_5 = dish['rating_from_1_to_5']
    
      recipes << recipe
    end
  return recipes
  end

  def find(id)
    sql = 'SELECT id, name, average_cooking_time_in_minutes, rating_from_1_to_5 FROM recipes WHERE id = $1;'
    sql_params = [id]
    result_set = DatabaseConnection.exec_params(sql, sql_params)
    

    dish = result_set[0]
    recipe = Recipe.new
    recipe.id = dish['id']
    recipe.name = dish['name']
    recipe.average_cooking_time_in_minutes = dish['average_cooking_time_in_minutes']
    recipe.rating_from_1_to_5 = dish['rating_from_1_to_5']


  return recipe  
  end
end


  