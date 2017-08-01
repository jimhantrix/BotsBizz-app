class EventsController < ApplicationController

	def index 
		@events = Event.all
    	if params[:sort] #if a query parameter with the key "sort" exists
    		@events = Event.all.order(params[:sort]=>params[:sort_order])
    	end
	end 

	def search 
		# search_term = params[:search]
		# #ping database to find recipes that are similar to search term
		# @events = Events.where ("title LIKE ?", "%#{search_term}%")
		# render :index 
	end 

	def new 
	end 

	def create
    	event = Event.create(
    	venue: params[:venue],
    	date: params[:date], 
    	time: params[:time])
    	flash[:success] = "Event crated success"
    	redirect_to "/events/#{events.id}"
  	end

  	def show 
  		event_id = params[:id]
  		@event = Event.find_by(id: event_id)
  	end 

  	def edit 
  		event_id = params[:id]
  		@event = Event.find_by(id: event_id)
  	end 


    def update 
      event_id = params[:id]
      event = Event.find_by(id: event_id)
      event.Update(venue: params[:venue],
        date: params[:date],
        time: params[:time])
      flash[:success] = "Event updated Bots Buzzer!"
      redirect_to "events"
    end 

  	def destroy 
  		event_id = params[:id]
  		event_id = Event.find_by(id: event_id)
  		event.destroy 
  		flash[:warning] = "Events Deleted Sucess"
  		redirect_to "/events"
  	end 
end
