class MainController < ApplicationController
	def index
		@products = Product.last(7)
	end
end
