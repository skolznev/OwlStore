class ProductsController < ApplicationController
	
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)

		@product.save
		redirect_to @product
	end

	# def upload
	# 	uploaded_io = params[:product][:picture]
	# 	File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
	# 		file.write(uploaded_io.read)
	# 	end
	# end

	private
		def product_params
			params.require(:product).permit(:name, :discription, :color, :picture)
		end
end
