class ProductsController < ApplicationController
	
	http_basic_authenticate_with name: "admin", password: "456852", except: [:root, :show]

	def index
		@products = Product.all.reverse
	end

	def show
		@product = Product.find(params[:id])
		@products = Product.last(6).reverse
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end

	private
		def product_params
			params.require(:product).permit(:name, :discription, :color, :picture, :type_product, :season, :sex, :size, :cost, :discount)
		end
end
