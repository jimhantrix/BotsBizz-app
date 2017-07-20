class UsersController < ApplicationController


  before_action :aunthenticate_user!, only: [:show]


	def index
    	@users = User.all
 	end

 	def new
    render :new   # optional; this is the default behavior
  end

  def create
	  user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
	  redirect_to users_path(user) # <-- go to show
  end


  def show
    @user = User.find(params[:id])
    render :show
  end





end
