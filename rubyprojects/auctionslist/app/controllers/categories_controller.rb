class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  	@rest = @categories[0]
  	@indus = @categories[1]
  	@commer = @categories[2]
  end
end
