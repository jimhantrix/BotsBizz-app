class UsersController < ApplicationController


  before_action :aunthenticate_user!, only: [:show]


	
 	def new
  end

  def create
	  user = User.new(first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      password: params[:password])
    if user.save 
      session[:user_id] = user.id 
      flash[:success] = "You are now a Bots Buzzer!"
      redirect_to "/events"
    else 
      flash[:warning]= "Not a valid Buzzer password"
      redirect_to "/signup"
    end 
  end


end
