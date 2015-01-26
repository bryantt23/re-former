class UsersController < ApplicationController
  protect_from_forgery 
  
  def new
#     instance variable = instantiate a blank User object
    @user = User.new
  end

  def create
#     accept normal top level User attributes
    # @user = User.new(:username => params[:username], 
    # :email => params[:email], :password => params[:password])
   
    
#       accept the nested :user hash from params
    @user = User.new(user_params)      
      if @user.save
        redirect_to new_user_path
      else
        render :new
      end
  end



# helper method
private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end