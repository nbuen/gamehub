class UsersController < ApplicationController

	def index
		
	end

	def create
		user = User.new(user_params)

		if user.save
			session[:user_id] = user.id
			redirect_to '/'
		else
			flash[:register_errors] = user.errors.full_messages
			redirect_to '/users'
		end
	end

		private
			def user_params
				params.require(:user).permit(:name, :username, :password_digest)
			end
end
