class UsersController < ApplicationController

# page show.html.erb
	def show   
		@user = User.find(params[:id])
	end

# page new.html.erb
	def new
		@title = "S'inscrire"
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])  
		if @user.save
			flash[:success] = "Bienvenue sur mon site"
			redirect_to @user
		else
			render 'new'
		end
	end

	private 
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

end
