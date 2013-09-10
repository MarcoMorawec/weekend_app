class PinsController < ApplicationController


	def index
		@backgroundpage = 'main'
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
			if @pin.save
				redirect_to @pin
			else
				render 'new'
			end
	end

	def edit
		@pin = Pin.find(params[:id])
	end

	def update
		@pin = Pin.find(params[:id])
			if @pin.update_attributes(params[:pin])
				redirect_to @pin
			else
				render 'edit'
			end
	end

	def destroy
		@pin = Pin.find(params[:id]).destroy
		redirect_to(:action => "index")
	end



end
