class RolesController < ApplicationController
	def show
    	@role = Role.find(params[:id])
  	end

	def new
	end

	def create
		@role = Role.new(role_params)
		@role.save
		redirect_to @role
  	end

  	private
  		def role_params
    		params.require(:role).permit(:title, :description)
  		end
end
