class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new user_params
      respond_to do |format|
        if @user.save
          format.html { redirect_to root_path, notice: 'User was successfully created.' }
        else
          format.html { render root_path }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    private
    def user_params
      params.require(:user).permit(:name)
    end
end
