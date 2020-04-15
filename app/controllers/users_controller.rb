class UsersController < ApplicationController
	def show
		@room = Room.new
		@user = User.find(params[:id])
		@users = User.all
	end

	def new
	end

	def edit
		@room = Room.find(params[:id])
	end

	def create
		@room = Room.new(room_params)
		@room.save
		redirect_to edit_room_path(@room.id)
	end


private
def room_params
	params.require(:room).permit(:title)
end


end
