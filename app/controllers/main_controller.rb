class MainController < ApplicationController
	def index
		@products = Product.last(6).reverse
	end
end
