class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new room_params
    respond_to do |format|
      if @room.save
        format.html { redirect_to root_path, notice: 'Room was successfully created.' }
      else
        format.html { render root_path }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def room_params
    params.require(:room).permit(:room_number)
  end
end
