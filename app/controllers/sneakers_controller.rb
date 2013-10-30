class SneakersController < ApplicationController
	def index
		@sneakers = Sneaker.all
	end

	def new
		@sneaker = Sneaker.new(params[:id])
	end

	def create
		Sneaker.create(params[:sneaker])

		redirect_to sneakers_path
	end

	def show
		@sneaker = Sneaker.find(params[:id])
	end

	def edit
		@sneaker = Sneaker.find(params[:id])
	end

	def update
		sneaker = Sneaker.find(params[:id])
		sneaker.update_attributes(params[:sneaker])

		redirect_to sneakers_path
	end

	def destroy

     	sneaker = Sneaker.find(params[:id])
     	sneaker.stores.each do |store|
       		store.destroy
    	end
 
     	sneaker.destroy
 
     	redirect_to sneakers_path
   	end
end
