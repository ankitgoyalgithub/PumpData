class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
		@roles = Role.all
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to users_path
		else
			@roles = Role.all
			render :action => 'new'
		end
	end

	def user_params
		params.require(:users).permit(:role_id)
	end
end
