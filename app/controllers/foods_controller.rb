class FoodsController < ApplicationController
  def index
    @foods = UsdaFoodFacade.new.search_food(params[:q])
  end
end