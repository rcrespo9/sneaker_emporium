class StoresController < ApplicationController
	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end
	
	def create
		Store.create(params[:store])

		redirect_to stores_path
	end

	def show
		@store = Store.find(params[:id])
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		store = Store.find(params[:id])
		store.update_attributes(params[:store])

		redirect_to stores_path
	end

	def destroy

     	store = Store.find(params[:id])
     	store.sneakers.each do |sneaker|
       		sneaker.destroy
    	end
 
     	store.destroy
 
     	redirect_to stores_path
   	end
end
