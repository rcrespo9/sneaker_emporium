class SneakersController < ApplicationController
	def index
		@sneakers = Sneaker.all
	end

	def new
		@sneaker = Sneaker.new(params[:id])
		@stores = Store.all
	end

	def create
		@sneaker = Sneaker.create(params[:sneaker])
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
