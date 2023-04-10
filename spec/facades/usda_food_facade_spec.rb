require 'rails_helper'
require './app/facades/usda_food_facade'

RSpec.describe "UsdaFoodFacade" do
  it "exists" do
    usda_food_facade = UsdaFoodFacade.new
    expect(usda_food_facade).to be_an(UsdaFoodFacade)
  end

  it "return food by search wood" do
    all_foods = UsdaFoodFacade.new
    foods = all_foods.search_food("sweet potatoes")
   
    expect(foods[:foods][0].brandOwner).to be_a(String)
    expect(foods[:foods][0].ingredients).to be_a(String)
    expect(foods[:foods][0].description).to be_a(String)
    expect(foods[:foods][0].gtinUpc).to be_a(String)
  end
end