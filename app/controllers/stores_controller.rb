class StoresController < ApplicationController
	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
		@sneakers = Sneaker.all
	end

	def create
		@store = Store.create(params[:store])
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
