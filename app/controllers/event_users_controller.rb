class EventUsersController < ApplicationController


 def create 


 	@user = current_user
 	
 	@event = Event.find(params[:event_id])

 	@user.events.push(@event)

 	redirect_to user_events(@user)

 end 




 def index 

 	@events = Event.all 
 	current_user


 end  
 def 

 	@user = User.find(params[:user_id])
 	@events = @user.events

 end 








end
