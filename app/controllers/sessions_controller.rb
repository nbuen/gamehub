class SessionsController < ApplicationController
	def create
		user = User.find_by(username:login_params[:username])		

		if user && user.authenticate(login_params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			flash[:login_errors] = ['invalid credentials']
			redirect_to '/users'
		end
	end

		private
			def login_params
				params.require(:login).permit(:username, :password)
			end
end