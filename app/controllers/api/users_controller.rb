class Api::UsersController < ApplicationController
  def create
    debugger;
    @user = User.new(user_params)
    if @user.save! 
      sign_in(@user)
      render "api/users/show"
    else 
      render json: 'no loggie in'
    end 
    
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :password)
  end 
  
  
end
