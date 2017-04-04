class MainController < ApplicationController
	def index
		@products = Product.last(6)
	end
end
