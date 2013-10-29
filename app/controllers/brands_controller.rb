class BrandsController < ApplicationController
	def index
		@brands = Brand.all
	end

	def new
		@brand = Brand.new(params[:id])
	end

	def show
		@brand = Brand.find(params[:id])
	end

	def create
		@brand = Brand.create(params[:brand])
		redirect_to brands_path
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def update
		brand = Brand.find(params[:id])
		brand.update_attributes(params[:brand])
		redirect_to 
	end

	def destroy
		brand = Brand.find(params[:id])
		brand.destroy
		redirect_to
	end
end
