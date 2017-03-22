class ShoesController < ApplicationController
	def index
		@products = Product.all
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(params[:name])

		@product.save
		Products.select(:name).map(&:name).uniq
	end

end
