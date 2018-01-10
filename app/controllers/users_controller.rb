class UsersController < ApplicationController
  def new
  end

  def show
  	@user = User.find(params[:id])
 
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
  		if @user.save
        log_in @user
  			#save is succuessful do
  			flash[:sucess] = "Welcome to the Sample App"
  			#redirect_to @user same as below
  			
  			redirect_to user_url(@user)

  		else

  			render 'new'
  		end

  end

  private

  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
