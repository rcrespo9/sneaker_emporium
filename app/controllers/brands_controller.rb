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
		Brand.create(params[:brand])
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

                
        brand.sneakers.each do |sneaker|
            sneaker.stores.each do |store|
                store.destroy
        end
            sneaker.destroy
        end

        brand.destroy

        redirect_to brands_path
    end
end
