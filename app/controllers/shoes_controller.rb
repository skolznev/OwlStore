class ShoesController < ApplicationController
  def index
  	@products = Product.all
  end
end
