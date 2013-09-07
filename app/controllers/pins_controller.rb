class PinsController < ApplicationController

	def index
		@pin = Pin.order("hour ASC")
	end

	def show
		@pin = Pin.find(params[:id])
	end

	def new
		@pin = Pin.new(params[:id])
	end

	def create
		@pin = Pin.create(params[:pin])
			print "hello"
			if @pin.save
				redirect_to @pin
			else
				render 'new'
			end
	end

	def edit

	end

	def update

	end


	def destroy
		@pin = Pin.find(params[:id]).delete
			redirect_to pins_path
	end

end
