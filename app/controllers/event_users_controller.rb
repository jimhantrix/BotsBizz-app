class EventUsersController < ApplicationController

	def index 

	 @user = User.find(params[:user_id])
	 @events = @user.events

	end  



	def create 


	 @user = current_user
	 	
	 @event = Event.find(params[:event_id])

	 @user.events.push(@event)

	 redirect_to user_events_path(@user)

	end 
end
