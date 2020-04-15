class RoomsController < ApplicationController
	def new
		@room = Room.new
	end

	def create
		@room = Room.new(room_params)
		@room.save
		redirect_to 'edit_room_path'
	end

	def edit
		@room = Room.find(params[:id])
	end

	private
	def room_params
		params.require(:room).permit(:title)
	end
end
