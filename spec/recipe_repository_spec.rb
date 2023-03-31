require 'recipe_repository'

RSpec.describe RecipeRepository do
  
  def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end
  
  before(:each) do 
    reset_recipes_table
  end
  
  it 'returns two albums' do
    repo = RecipeRepository.new
    recipes = repo.all

    expect(recipes.length).to eq 2
    expect(recipes.first.id).to eq '1'
    expect(recipes.first.name).to eq 'Paella'
    expect(recipes.first.average_cooking_time_in_minutes).to eq'60'
    expect(recipes.first.rating_from_1_to_5).to eq '4'
  end

  it 'returns 1st recipe' do
    repo = RecipeRepository.new
    recipes = repo.find(2)
    expect(recipes.id).to eq '2'
    expect(recipes.name).to eq 'Sushi'
    expect(recipes.average_cooking_time_in_minutes).to eq '20'
    expect(recipes.rating_from_1_to_5).to eq '3'
  end
end


