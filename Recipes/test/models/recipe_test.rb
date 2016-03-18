require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: 'Chicken Parma', summary: 'This is the best chicken ever', description: 'This is just a general description for the chicken parma recipe')
  end

  test 'Recipe should be valid' do
    assert @recipe.valid?
  end

  test 'Name should be present' do
    @recipe.name = ''
    assert_not @recipe.valid?
  end

  test 'Name length should not be too long' do
    @recipe.name = 'a' * 101
    assert_not @recipe.valid?
  end

  test 'Name length should not be too short' do
    @recipe.name = 'aaaa'
    assert_not @recipe.valid?
  end

  test 'Summary should be present' do
    @recipe.summary = ''
    assert_not @recipe.valid?
  end

  test 'Summary length should not be too long' do
    @recipe.summary = 'a' * 151
    assert_not @recipe.valid?
  end

  test 'Summary length should not be too short' do
    @recipe.summary = 'a' * 9
    assert_not @recipe.valid?
  end

  test 'Description should be present' do
    @recipe.description = ''
    assert_not @recipe.valid?
  end

  test 'Description length should not be too long' do
    @recipe.description = 'a' * 501
    assert_not @recipe.valid?
  end

  test 'Description length should not be too short' do
    @recipe.description = 'a' * 19
    assert_not @recipe.valid?
  end
end