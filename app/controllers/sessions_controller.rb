class SessionsController < ApplicationController
	def create
		user = User.find_by(username:login_params[:username])		

		if user && user.password_digest == login_params[:password_digest]
			session[:user_id] = user.id
			redirect_to '/'
		else
			flash[:login_errors] = "Invalid Login"
			redirect_to '/users/index'
		end
	end

		private
			def login_params
				params.require(:login).permit(:username, :password_digest)
			end
end