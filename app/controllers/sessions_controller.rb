class SessionsController < ApplicationController
	
	def new

	end

	def create
		
		@user = User.where(email: params[:session][:email]).first
		
		if @user == nil || !@user.authenticate(params[:session][:password])
			flash[:error] = "Please try logging in again"
			render 'new'
		else
			session[:token] = @user.id
			@current_user = @user
      		redirect_to users_path
		end
	end

	def destroy
		session.delete(:remember_token)
    	redirect_to root_path
	end

end